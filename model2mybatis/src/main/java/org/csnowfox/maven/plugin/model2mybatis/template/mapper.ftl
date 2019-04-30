/*
* Licensed to the Apache Software Foundation (ASF) under one
* or more contributor license agreements.  See the NOTICE file
* distributed with this work for additional information
* regarding copyright ownership.  The ASF licenses this file
* to you under the Apache License, Version 2.0 (the
* "License"); you may not use this file except in compliance
* with the License.  You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

package ${project_package};

import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.DeleteProvider;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.UpdateProvider;
import org.apache.ibatis.type.JdbcType;

/**
* Created by mydel2mybatis tool
* @description ${entity_comment}
*/
public interface ${entity_class}Mapper extends ${entity_interface}{
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ${entity_table_name}
     *
     * @mbggenerated
     */
    @SelectProvider(type=${entity_class}SqlProvider.class, method="countByExample")
    int countByExample(${entity_class}Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ${entity_table_name}
     *
     * @mbggenerated
     */
    @DeleteProvider(type=${entity_class}SqlProvider.class, method="deleteByExample")
    int deleteByExample(${entity_class}Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ${entity_table_name}
     *
     * @mbggenerated
     */
    @Delete({
        "delete",
        "from ${entity_table_name}",
        "where 1=1 <#list class_primarkKeys as key>",
        "and ${key.name} = <#noparse>#{</#noparse>${key.name},jdbcType=${key.jdbcClazz}<#noparse>}</#noparse></#list>"
    })
    int deleteByPrimaryKey(<#list class_primarkKeys as key><#if key_index != 0>,</#if>${key.clazz} ${key.name}</#list>);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ${entity_table_name}
     *
     * @mbggenerated
     */
    @Insert({
        "insert into ${entity_table_name} (",
        "<#list class_columns as col><#if col_index != 0>,</#if>${col.name}</#list>",
        ")",
        "values (<#list class_columns as col><#if col_index != 0>",
        ",</#if><#noparse>#{</#noparse>${col.name},jdbcType=${col.jdbcClazz}<#noparse>}</#noparse></#list>)"
    })
    int insert(${entity_class} record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ${entity_table_name}
     *
     * @mbggenerated
     */
    @InsertProvider(type=${entity_class}SqlProvider.class, method="insertSelective")
    int insertSelective(${entity_class} record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ${entity_table_name}
     *
     * @mbggenerated
     */
    @SelectProvider(type=${entity_class}SqlProvider.class, method="selectByExample")
    @Results({<#list class_columns as col><#if col_index != 0>,</#if>
        @Result(column="${col.name}", property="${col.name}", jdbcType=JdbcType.${col.jdbcClazz}<#list class_primarkKeys as key><#if key.name=col.name>, id=true</#if></#list>)</#list>
    })
    List<${entity_class}> selectByExample(${entity_class}Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ${entity_table_name}
     *
     * @mbggenerated
     */
    @Select({
        "select",
        <#list class_columns as col>
        "<#if col_index != 0>,</#if> ${col.name}",
        </#list>
        "from ${entity_table_name}",
        "where 1=1 <#list class_primarkKeys as key>",
        "and ${key.name} = <#noparse>#{</#noparse>${key.name},jdbcType=${key.jdbcClazz}<#noparse>}</#noparse></#list>"
    })
    @Results({<#list class_columns as col><#if col_index != 0>,</#if>
        @Result(column="${col.name}", property="${col.name}", jdbcType=JdbcType.${col.jdbcClazz}<#list class_primarkKeys as key><#if key.name=col.name>, id=true</#if></#list>)</#list>
    })
    ${entity_class} selectByPrimaryKey(<#list class_primarkKeys as key><#if key_index != 0>,</#if>${key.clazz} ${key.name}</#list>);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ${entity_table_name}
     *
     * @mbggenerated
     */
    @UpdateProvider(type=${entity_class}SqlProvider.class, method="updateByExampleSelective")
    int updateByExampleSelective(@Param("record") ${entity_class} record, @Param("example") ${entity_class}Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ${entity_table_name}
     *
     * @mbggenerated
     */
    @UpdateProvider(type=${entity_class}SqlProvider.class, method="updateByExample")
    int updateByExample(@Param("record") ${entity_class} record, @Param("example") ${entity_class}Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ${entity_table_name}
     *
     * @mbggenerated
     */
    @UpdateProvider(type=${entity_class}SqlProvider.class, method="updateByPrimaryKeySelective")
    int updateByPrimaryKeySelective(${entity_class} record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ${entity_table_name}
     *
     * @mbggenerated
     */
    @Update({
        "update ${entity_class}",
        "set ",
        <#list class_notKeys as item>
        "<#if item_index != 0>,</#if>${item.name} = <#noparse>#{</#noparse>${item.name},jdbcType=${item.jdbcClazz}<#noparse>}</#noparse>",
        </#list>
        "where 1=1 <#list class_primarkKeys as key>",
        "and ${key.name} = <#noparse>#{</#noparse>${key.name},jdbcType=${key.jdbcClazz}<#noparse>}</#noparse></#list>"
    })
    int updateByPrimaryKey(${entity_class} record);
}