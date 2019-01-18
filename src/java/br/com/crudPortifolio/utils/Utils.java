/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.crudPortifolio.utils;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;

/**
 *
 * @author thais.silveira
 */
public class Utils {
    
    public static String getImagemBase64(InputStream imagem, String mime) throws IOException {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        byte[] buffer = new byte[1024];
        int read = 0;
        while ((read = imagem.read(buffer, 0, buffer.length)) != -1) {
            baos.write(buffer, 0, read);
        }
        String base = Base64.getEncoder().encodeToString(baos.toByteArray());
        return base.isEmpty() ? null : ("data:"+mime+";base64, " + base);
    }
}
