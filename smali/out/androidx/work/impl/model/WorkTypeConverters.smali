.class public Landroidx/work/impl/model/WorkTypeConverters;
.super Ljava/lang/Object;
.source "WorkTypeConverters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/model/WorkTypeConverters$NetworkTypeIds;,
        Landroidx/work/impl/model/WorkTypeConverters$BackoffPolicyIds;,
        Landroidx/work/impl/model/WorkTypeConverters$StateIds;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backoffPolicyToInt(Landroidx/work/BackoffPolicy;)I
    .registers 4
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .line 155
    sget-object v0, Landroidx/work/impl/model/WorkTypeConverters$1;->$SwitchMap$androidx$work$BackoffPolicy:[I

    invoke-virtual {p0}, Landroidx/work/BackoffPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to int"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_27
    const/4 p0, 0x1

    return p0

    :pswitch_29
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_27
    .end packed-switch
.end method

.method public static byteArrayToContentUriTriggers([B)Landroidx/work/ContentUriTriggers;
    .registers 7
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .line 294
    new-instance v0, Landroidx/work/ContentUriTriggers;

    invoke-direct {v0}, Landroidx/work/ContentUriTriggers;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 299
    :cond_8
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p0, 0x0

    .line 302
    :try_start_e
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_3f
    .catchall {:try_start_e .. :try_end_13} :catchall_3b

    .line 303
    :try_start_13
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    :goto_17
    if-lez p0, :cond_2b

    .line 304
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 305
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v4

    .line 306
    invoke-virtual {v0, v3, v4}, Landroidx/work/ContentUriTriggers;->add(Landroid/net/Uri;Z)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_28} :catch_39
    .catchall {:try_start_13 .. :try_end_28} :catchall_59

    add-int/lit8 p0, p0, -0x1

    goto :goto_17

    :cond_2b
    if-eqz v2, :cond_35

    .line 313
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p0

    .line 315
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 319
    :cond_35
    :goto_35
    :try_start_35
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_54

    goto :goto_58

    :catch_39
    move-exception p0

    goto :goto_43

    :catchall_3b
    move-exception v0

    move-object v2, p0

    move-object p0, v0

    goto :goto_5a

    :catch_3f
    move-exception v2

    move-object v5, v2

    move-object v2, p0

    move-object p0, v5

    .line 309
    :goto_43
    :try_start_43
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_59

    if-eqz v2, :cond_50

    .line 313
    :try_start_48
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_50

    :catch_4c
    move-exception p0

    .line 315
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 319
    :cond_50
    :goto_50
    :try_start_50
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_58

    :catch_54
    move-exception p0

    .line 321
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_58
    return-object v0

    :catchall_59
    move-exception p0

    :goto_5a
    if-eqz v2, :cond_64

    .line 313
    :try_start_5c
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception v0

    .line 315
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 319
    :cond_64
    :goto_64
    :try_start_64
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception v0

    .line 321
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 322
    :goto_6c
    throw p0
.end method

.method public static contentUriTriggersToByteArray(Landroidx/work/ContentUriTriggers;)[B
    .registers 5
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .line 256
    invoke-virtual {p0}, Landroidx/work/ContentUriTriggers;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 259
    :cond_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 262
    :try_start_d
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_56
    .catchall {:try_start_d .. :try_end_12} :catchall_53

    .line 263
    :try_start_12
    invoke-virtual {p0}, Landroidx/work/ContentUriTriggers;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 264
    invoke-virtual {p0}, Landroidx/work/ContentUriTriggers;->getTriggers()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/ContentUriTriggers$Trigger;

    .line 265
    invoke-virtual {v1}, Landroidx/work/ContentUriTriggers$Trigger;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1}, Landroidx/work/ContentUriTriggers$Trigger;->shouldTriggerForDescendants()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_3f} :catch_50
    .catchall {:try_start_12 .. :try_end_3f} :catchall_4e

    goto :goto_21

    :cond_40
    if-eqz v2, :cond_4a

    .line 273
    :try_start_42
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_4a

    :catch_46
    move-exception p0

    .line 275
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 279
    :cond_4a
    :goto_4a
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_68

    goto :goto_6c

    :catchall_4e
    move-exception p0

    goto :goto_71

    :catch_50
    move-exception p0

    move-object v1, v2

    goto :goto_57

    :catchall_53
    move-exception p0

    move-object v2, v1

    goto :goto_71

    :catch_56
    move-exception p0

    .line 269
    :goto_57
    :try_start_57
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_53

    if-eqz v1, :cond_64

    .line 273
    :try_start_5c
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception p0

    .line 275
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 279
    :cond_64
    :goto_64
    :try_start_64
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception p0

    .line 281
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 284
    :goto_6c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :goto_71
    if-eqz v2, :cond_7b

    .line 273
    :try_start_73
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_7b

    :catch_77
    move-exception v1

    .line 275
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 279
    :cond_7b
    :goto_7b
    :try_start_7b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_83

    :catch_7f
    move-exception v0

    .line 281
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 282
    :goto_83
    throw p0
.end method

.method public static intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;
    .registers 4
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    packed-switch p0, :pswitch_data_26

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to BackoffPolicy"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :pswitch_1f
    sget-object p0, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    return-object p0

    .line 178
    :pswitch_22
    sget-object p0, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    return-object p0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1f
    .end packed-switch
.end method

.method public static intToNetworkType(I)Landroidx/work/NetworkType;
    .registers 4
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    packed-switch p0, :pswitch_data_2e

    .line 244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to NetworkType"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :pswitch_1f
    sget-object p0, Landroidx/work/NetworkType;->METERED:Landroidx/work/NetworkType;

    return-object p0

    .line 238
    :pswitch_22
    sget-object p0, Landroidx/work/NetworkType;->NOT_ROAMING:Landroidx/work/NetworkType;

    return-object p0

    .line 235
    :pswitch_25
    sget-object p0, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    return-object p0

    .line 232
    :pswitch_28
    sget-object p0, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    return-object p0

    .line 229
    :pswitch_2b
    sget-object p0, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    return-object p0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
    .end packed-switch
.end method

.method public static intToState(I)Landroidx/work/WorkInfo$State;
    .registers 4
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    packed-switch p0, :pswitch_data_32

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to State"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :pswitch_1f
    sget-object p0, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    return-object p0

    .line 136
    :pswitch_22
    sget-object p0, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    return-object p0

    .line 133
    :pswitch_25
    sget-object p0, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    return-object p0

    .line 130
    :pswitch_28
    sget-object p0, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    return-object p0

    .line 127
    :pswitch_2b
    sget-object p0, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    return-object p0

    .line 124
    :pswitch_2e
    sget-object p0, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    return-object p0

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
    .end packed-switch
.end method

.method public static networkTypeToInt(Landroidx/work/NetworkType;)I
    .registers 4
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .line 197
    sget-object v0, Landroidx/work/impl/model/WorkTypeConverters$1;->$SwitchMap$androidx$work$NetworkType:[I

    invoke-virtual {p0}, Landroidx/work/NetworkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to int"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_27
    const/4 p0, 0x4

    return p0

    :pswitch_29
    const/4 p0, 0x3

    return p0

    :pswitch_2b
    const/4 p0, 0x2

    return p0

    :pswitch_2d
    const/4 p0, 0x1

    return p0

    :pswitch_2f
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2d
        :pswitch_2b
        :pswitch_29
        :pswitch_27
    .end packed-switch
.end method

.method public static stateToInt(Landroidx/work/WorkInfo$State;)I
    .registers 4
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .line 89
    sget-object v0, Landroidx/work/impl/model/WorkTypeConverters$1;->$SwitchMap$androidx$work$WorkInfo$State:[I

    invoke-virtual {p0}, Landroidx/work/WorkInfo$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to int"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_27
    const/4 p0, 0x5

    return p0

    :pswitch_29
    const/4 p0, 0x4

    return p0

    :pswitch_2b
    const/4 p0, 0x3

    return p0

    :pswitch_2d
    const/4 p0, 0x2

    return p0

    :pswitch_2f
    const/4 p0, 0x1

    return p0

    :pswitch_31
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2f
        :pswitch_2d
        :pswitch_2b
        :pswitch_29
        :pswitch_27
    .end packed-switch
.end method
