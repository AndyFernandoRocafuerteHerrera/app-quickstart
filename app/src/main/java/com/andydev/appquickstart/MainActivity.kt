package com.andydev.appquickstart

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log

class MainActivity : AppCompatActivity()

    val hola: String = "Hola"
    var adios: String = "Adios"

    var numero = 2

    //var c: Int


    //val a: Int = 1 // immediate assignment
    //val b: 2 // ´Int´ type is inferred
    //val c: Int // type required when no initializar is provided
    //c = 3 // deferred assignment

    //var x = 5 //´Int´ type is inferred
    //x += 1

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        adios = "hola"

        Log.v(adios)
    }
}