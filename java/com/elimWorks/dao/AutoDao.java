package com.elimWorks.dao;

import com.elimWorks.pojo.*;
import org.apache.ibatis.annotations.Param;

import java.util.Collection;

public interface AutoDao {

    public Collection<Auto> getModelsMessages();

    public Collection<Auto> getModelsAllById(@Param(value = "autoModelId") Integer autoModelId);

    public Auto getDetialsByAutoId(@Param(value = "autoId") Integer autoId);

    public Collection<Color> getAllColorMethod();

    public Collection<Color> getAllColorTypeMethod();

    public Collection<Wheel> getAllWheelMetod();

    public Collection<Trim> getAllTrimMethod();

    public Collection<Auto_modelType> getAllModelType();

    public Collection<Auto_energyType> getAllEnergyType();

    public Collection<Auto_bodyDesignType> getAllBodyDesignType();
}