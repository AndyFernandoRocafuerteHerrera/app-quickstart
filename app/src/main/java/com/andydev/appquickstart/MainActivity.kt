package com.andydev.appquickstart

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import java.sql.DriverManager.println

class MainActivity : AppCompatActivity()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        mostrarHola()
        mostraradios()
    }

    fun mostrarHola(){
        println("HOLA KOTLIN!")
    }

    fun mostraradios() {
        println("adios kotlin!")
    }

}