<?php
// ADEL CODEIGNITER 4 CRUD GENERATOR

namespace App\Controllers;

use App\Controllers\BaseController;

use App\Models\M_uangkeluar;


class Uangkeluar extends BaseController
{

  protected $Model;
  protected $validation;
  protected $db;

  public function __construct()
  {
    $this->Model = new M_uangkeluar();
    $this->validation =  \Config\Services::validation();
    $this->db = \Config\database::connect();
  }

  public function index()
  {


    $data = [
      'uangkeluar' =>  $this->Model->findAll()
    ];

    // echo  print_r($data['uangkeluar']);
    // die;
    $template = [
      'isi' => view('uangkeluar/index', $data)
    ];
    return view('layout/main', $template);
  }
  public function add()
  {
    $validasi = [];
    if ($this->request->getMethod() === 'post') {

      $data = [
        'jumlah' => $this->request->getPost('jumlah'),
        'keterangan' => $this->request->getPost('keterangan'),
        'tanggal_keluar' => date("Y-m-d", strtotime($this->request->getPost('tanggal'))),

      ];


      if ($this->Model->save($data)) {


        $validasi = [
          'berhasil' => 'Berhasil Menyimpan Data'
        ];
      } else {
        $validasi = [
          'errors' => $this->Model->errors()
        ];
      }
    }
    $template = [
      'isi' => view('uangkeluar/form', $validasi)
    ];
    return view('layout/main', $template);
  }

  public function edit($id)
  {


    $validasi = [
      'update' => $id,
      'model' => $this->Model->where(['id_uangkeluar' => $id])->first(),
    ];
    if ($this->request->getMethod() === 'post') {

      $data = [
        'jumlah' => $this->request->getPost('jumlah'),
        'keterangan' => $this->request->getPost('keterangan'),
        'tanggal_keluar' => date("Y-m-d", strtotime($this->request->getPost('tanggal'))),
      ];
      if ($this->Model->update($id, $data)) {

        $validasi = [
          'berhasil' => 'Berhasil Menyimpan Data',
          'update' => $id,
          'model' => $this->Model->where(['id_uangkeluar' => $id])->first(),
        ];
        $template = [
          'isi' => view('uangkeluar/form', $validasi)
        ];
        return view('layout/main', $template);
      }

      // die;

      // print_r($data);

      // }


    }
    $template = [
      'isi' => view('uangkeluar/form', $validasi)
    ];
    return view('layout/main', $template);
  }


  public function delete($id)
  {
    $this->Model->delete($id);
    return  redirect()->to('/uangkeluar');
  }
}
