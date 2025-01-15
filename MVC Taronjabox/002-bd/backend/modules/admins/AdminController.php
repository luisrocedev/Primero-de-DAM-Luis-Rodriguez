<?php

namespace Backend\Modules\Admins;

use Backend\Modules\Admins\AdminModel;

class AdminController
{
    private $model;

    public function __construct($db)
    {
        $this->model = new AdminModel($db);
    }

    public function login($username, $password)
    {
        $admin = $this->model->getAdminByUsername($username);
        if ($admin && password_verify($password, $admin['password'])) {
            session_start();
            $_SESSION['admin_id'] = $admin['id'];
            return true;
        }
        return false;
    }
}
