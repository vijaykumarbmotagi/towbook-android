.class final Lorg/acra/collector/DropBoxCollector;
.super Ljava/lang/Object;
.source "DropBoxCollector.java"


# static fields
.field private static final NO_RESULT:Ljava/lang/String; = "N/A"

.field private static final SYSTEM_TAGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const-string v0, "system_app_anr"

    const-string v1, "system_app_wtf"

    const-string v2, "system_app_crash"

    const-string v3, "system_server_anr"

    const-string v4, "system_server_wtf"

    const-string v5, "system_server_crash"

    const-string v6, "BATTERY_DISCHARGE_INFO"

    const-string v7, "SYSTEM_RECOVERY_LOG"

    const-string v8, "SYSTEM_BOOT"

    const-string v9, "SYSTEM_LAST_KMSG"

    const-string v10, "APANIC_CONSOLE"

    const-string v11, "APANIC_THREADS"

    const-string v12, "SYSTEM_RESTART"

    const-string v13, "SYSTEM_TOMBSTONE"

    const-string v14, "data_app_strictmode"

    .line 42
    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/acra/collector/DropBoxCollector;->SYSTEM_TAGS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .registers 22

    move-object/from16 v0, p1

    .line 62
    :try_start_2
    invoke-static {}, Lorg/acra/collector/Compatibility;->getDropBoxServiceName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    const-string v0, "N/A"

    return-object v0

    :cond_b
    move-object/from16 v2, p0

    .line 67
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getNextEntry"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v2, :cond_2d

    const-string v0, ""

    return-object v0

    .line 73
    :cond_2d
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 74
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 75
    iget v5, v3, Landroid/text/format/Time;->minute:I

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/acra/ACRAConfiguration;->dropboxCollectionMinutes()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v3, Landroid/text/format/Time;->minute:I

    .line 76
    invoke-virtual {v3, v7}, Landroid/text/format/Time;->normalize(Z)J

    .line 77
    invoke-virtual {v3, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 79
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Lorg/acra/ACRAConfiguration;->includeDropBoxSystemTags()Z

    move-result v10

    if-eqz v10, :cond_61

    .line 81
    sget-object v10, Lorg/acra/collector/DropBoxCollector;->SYSTEM_TAGS:[Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_61
    if-eqz v0, :cond_6d

    .line 83
    array-length v10, v0

    if-lez v10, :cond_6d

    .line 84
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    :cond_6d
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_76

    const-string v0, "No tag configured for collection."

    return-object v0

    .line 91
    :cond_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_151

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "Tag: "

    .line 93
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0xa

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    new-array v12, v4, [Ljava/lang/Object;

    aput-object v10, v12, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v8

    invoke-virtual {v2, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_b1

    const-string v10, "Nothing."

    .line 96
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7f

    .line 100
    :cond_b1
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "getText"

    new-array v15, v8, [Ljava/lang/Class;

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v7

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 101
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "getTimeMillis"

    const/16 v16, 0x0

    move-object/from16 v4, v16

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v14, v15, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 102
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "close"

    move-object/from16 v7, v16

    check-cast v7, [Ljava/lang/Class;

    invoke-virtual {v14, v15, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    :goto_df
    if-eqz v12, :cond_14d

    .line 104
    move-object/from16 v14, v16

    check-cast v14, [Ljava/lang/Object;

    invoke-virtual {v4, v12, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 105
    invoke-virtual {v3, v14, v15}, Landroid/text/format/Time;->set(J)V

    const-string v8, "@"

    .line 106
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    .line 107
    new-array v11, v8, [Ljava/lang/Object;

    const/16 v8, 0x1f4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v18, 0x0

    aput-object v8, v11, v18

    invoke-virtual {v13, v12, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_126

    const-string v11, "Text: "

    .line 109
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    goto :goto_130

    :cond_126
    const-string v8, "Not Text!"

    .line 111
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    :goto_130
    move-object/from16 v11, v16

    check-cast v11, [Ljava/lang/Object;

    invoke-virtual {v7, v12, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x2

    .line 114
    new-array v12, v11, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v10, v12, v17

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v12, v15

    invoke-virtual {v2, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/4 v8, 0x1

    const/16 v11, 0xa

    goto :goto_df

    :cond_14d
    const/4 v4, 0x2

    const/4 v7, 0x0

    goto/16 :goto_7f

    .line 117
    :cond_151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_155
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_155} :catch_17e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_155} :catch_176
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_155} :catch_16e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_155} :catch_166
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_155} :catch_15e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_155} :catch_156

    return-object v0

    .line 130
    :catch_156
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "DropBoxManager not available."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_185

    .line 128
    :catch_15e
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "DropBoxManager not available."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_185

    .line 126
    :catch_166
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "DropBoxManager not available."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_185

    .line 124
    :catch_16e
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "DropBoxManager not available."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_185

    .line 122
    :catch_176
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "DropBoxManager not available."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_185

    .line 120
    :catch_17e
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "DropBoxManager not available."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_185
    const-string v0, "N/A"

    return-object v0
.end method
