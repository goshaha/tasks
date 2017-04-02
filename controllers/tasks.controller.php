<?php
class TasksController extends Controller{

    public function __construct($data = array()){
        parent::__construct($data);
        $this->model = new Task();
    }

    public function index(){
      $start=0;
      $limit=3;
        if(isset($_GET['id']))
        {
        $id=$_GET['id'];
        $start=($id-1)*$limit;
        }

      $this->data['tasks'] = $this->model->getList($start, $limit);
      $this->data['taskspagin'] = $this->model->getAll($limit);
    }
    public function create(){
    //    $this->data['pages'] = $this->model->getList();
    }
    public function upload(){
      if (isset($_FILES["file"])) {
     $dir =  $_SERVER['DOCUMENT_ROOT']."/webroot/uploads/";
     $path = "/uploads/" . basename($_FILES['file']['name']);
        if (move_uploaded_file($_FILES['file']['tmp_name'], $dir . basename($_FILES['file']['name']))) {
           echo "Файл корректен и был успешно загружен.\n";
        }
     }
     if ( $_POST ){
       $result = $this->model->save($_POST,$path);
       if ( $result ){
           Session::setFlash('Page was saved.');
       } else {
           Session::setFlash('Error.');
       }
       Router::redirect('/tasks/create');
   }

     }

     public function admin_index(){
       $start=0;
       $limit=10;
         $this->data['tasks'] = $this->model->getList($start, $limit);
     }

     public function admin_edit(){

         if ( $_POST ){
             $id = isset($_POST['id']) ? $_POST['id'] : null;
             $result = $this->model->adj($_POST, $id);
             if ( $result ){
                 Session::setFlash('Page was saved.');
             } else {
                 Session::setFlash('Error.');
             }
             Router::redirect('/admin/tasks/');
         }

         if ( isset($this->params[0]) ){
             $this->data['task'] = $this->model->getById($this->params[0]);
         } else {
             Session::setFlash('Wrong page id.');
             Router::redirect('/admin/tasks/');
         }
     }

     public function admin_delete(){
         if ( isset($this->params[0]) ){
             $result = $this->model->delete($this->params[0]);
             if ( $result ){
                 Session::setFlash('Page was deleted.');
             } else {
                 Session::setFlash('Error.');
             }
         }
         Router::redirect('/admin/tasks/');
     }
     }
