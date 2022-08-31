<?php
// ADEL CODEIGNITER 4 CRUD GENERATOR

namespace App\Models;

use CodeIgniter\Model;

class M_kurir extends Model
{

  protected $table = 'kurir';
  protected $primaryKey = 'id_kurir';
  protected $returnType = 'object';
  protected $useSoftDeletes = false;
  protected $allowedFields = ['nama_kurir'];
  protected $useAutoIncrement = true;
  protected $useTimestamps = false;
  protected $createdField  = 'created_at';
  protected $updatedField  = 'updated_at';
  protected $deletedField  = 'deleted_at';
  protected $validationRules    = [
    // 'user_id' => 'required|is_unique[kurir.user_id]',

  ];
  protected $validationMessages = [
    // 'nama_brand' => ['required' => 'nama kategri efkne']
  ];
  // protected $skipValidation     = true;
}
