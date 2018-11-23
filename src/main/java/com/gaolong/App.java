package com.gaolong;

import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.support.config.FastJsonConfig;
import com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.web.HttpMessageConverters;
import org.springframework.context.annotation.Bean;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;

import java.util.ArrayList;
import java.util.List;
@MapperScan("com.gaolong.dao")
@SpringBootApplication
public class App {
    public static void main(String[] args) {
        SpringApplication.run(App.class,args);
    }

    @Bean
    public HttpMessageConverters fastJsonHttpMessageConverters() {
        FastJsonHttpMessageConverter oFastConverter = new FastJsonHttpMessageConverter();
        FastJsonConfig oFastJsonConfig = new FastJsonConfig();
        oFastJsonConfig.setSerializerFeatures(SerializerFeature.PrettyFormat);
        oFastConverter.setFastJsonConfig(oFastJsonConfig);
        List<MediaType> oFastMediaTypeList = new ArrayList<>();
        oFastMediaTypeList.add(MediaType.APPLICATION_JSON_UTF8);
        oFastConverter.setSupportedMediaTypes(oFastMediaTypeList);
        HttpMessageConverter<?> oConverter = oFastConverter;
        return new HttpMessageConverters(oConverter);
    }


}
