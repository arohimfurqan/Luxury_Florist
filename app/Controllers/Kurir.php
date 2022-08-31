<?php
// ADEL CODEIGNITER 4 CRUD GENERATOR

namespace App\Controllers;

use App\Controllers\BaseController;

use App\Models\M_kurir;

class Kurir extends BaseController
{

  protected $Model;
  protected $validation;
  protected $db;

  public function __construct()
  {
    $this->Model = new M_kurir();
    $this->validation =  \Config\Services::validation();
    $this->db = \Config\database::connect();
  }

  public function index()
  {

    $data = [
      'kurir' =>  $this->Model->findAll()
    ];
    $template = [
      'isi' => view('kurir/index', $data)
    ];
    return view('layout/main', $template);
  }
  public function add()
  {
    $validasi = [];
    if ($this->request->getMethod() === 'post') {
      $data = [
        'nama_kurir' => $this->request->getPost('nama_kurir'),
      ];
      if ($this->Model->save($data)) {
        $validasi = [
          'berhasil' => 'Berhasil Menyimpan Data'
        ];
      } else {
        $validasi = [
          'errors' => $this->Model->errors()
        ];
        // print_r($this->Model->errors());
        // die;
      }
    }
    $template = [
      'isi' => view('kurir/form', $validasi)
    ];
    return view('layout/main', $template);
  }

  public function edit($id)
  {
    $validasi = [
      'update' => $id,
      'model' => $this->Model->where(['id_kurir' => $id])->first(),


    ];
    if ($this->request->getMethod() === 'post') {
      $data = [
        'nama_kurir' => $this->request->getPost('nama_kurir'),
      ];
      if ($this->Model->update($id, $data)) {
        $validasi = [
          'update' => $id,
          'model' => $this->Model->where(['id_kurir' => $id])->first(),
          'berhasil' => 'Berhasil Menyimpan Data'
        ];
      } else {
        $validasi = [
          'update' => $id,
          'model' => $this->Model->where(['id_kurir' => $id])->first(),
          'errors' => $this->Model->errors()
        ];
        // print_r($this->Model->errors());
        // die;
      }
    }
    $template = [
      'isi' => view('kurir/form', $validasi)
    ];
    return view('layout/main', $template);
  }


  public function delete($id)
  {

    $this->Model->delete($id);
    return  redirect()->to('/kurir');
  }
}
