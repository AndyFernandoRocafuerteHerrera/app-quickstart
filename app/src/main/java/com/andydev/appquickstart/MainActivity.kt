package com.andydev.appquickstart

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        var x = 40
        var y = 60

        sumaNumeros(x, y)
    }

    fun sumaNumeros( num1: Int , num2: Int){

        var suma = num1 + num2

        Log.v("hl","la suma de los numeros es " + suma)

    }

}