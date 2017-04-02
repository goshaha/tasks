<?php
class Task extends Model
{

  public function save($data,$x, $id = null){
      $name = $this->db->escape($data['name']);
      $email = $this->db->escape($data['email']);
      $text = $this->db->escape($data['text']);
      $file = $x;
          $sql = "
              insert into task
                 set name = '{$name}',
                     email = '{$email}',
                     text = '{$text}',
                     file = '{$file}'
          ";

      return $this->db->query($sql);
  }

  public function adj($data,$id){
    $text = $this->db->escape($data['text']);
    $rating = $this->db->escape($data['rating']);
    $sql = "
       update task
           set text = '{$text}',
           rating = '{$rating}'
           where id = {$id}
    ";
    return $this->db->query($sql);
  }

   public function getList($start, $limit){
      $sql = "select * from task LIMIT $start, $limit";
      return $this->db->query($sql);
  }
   public function getAll($limit){
      $sql = "select * from task";
      $len = count($this->db->query($sql));
     $total=ceil($len/$limit);
    return $total;
  }
    public function getById($id){
        $id = (int)$id;
        $sql = "select * from task where id = '{$id}' limit 1";
        $result = $this->db->query($sql);
        return isset($result[0]) ? $result[0] : null;
    }
    public function delete($id){
        $id = (int)$id;
        $sql = "delete from task where id = {$id}";
        return $this->db->query($sql);
    }
    }
