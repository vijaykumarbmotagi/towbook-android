.class final Lorg/acra/CrashReportPersister;
.super Ljava/lang/Object;
.source "CrashReportPersister.java"


# static fields
.field private static final CONTINUE:I = 0x3

.field private static final IGNORE:I = 0x5

.field private static final KEY_DONE:I = 0x4

.field private static final LINE_SEPARATOR:Ljava/lang/String; = "\n"

.field private static final NONE:I = 0x0

.field private static final SLASH:I = 0x1

.field private static final UNICODE:I = 0x2


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/acra/CrashReportPersister;->context:Landroid/content/Context;

    return-void
.end method

.method private dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .registers 10

    const/4 v0, 0x0

    const/16 v1, 0x20

    if-nez p3, :cond_18

    .line 341
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_18

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_18

    const-string v2, "\\ "

    .line 342
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    .line 346
    :goto_19
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_7a

    .line 347
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_7c

    :pswitch_26
    const-string v4, "\\#!=:"

    .line 362
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_4b

    if-eqz p3, :cond_50

    if-ne v3, v1, :cond_50

    goto :goto_4b

    :pswitch_33
    const-string v3, "\\r"

    .line 359
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    :pswitch_39
    const-string v3, "\\f"

    .line 356
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    :pswitch_3f
    const-string v3, "\\n"

    .line 353
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    :pswitch_45
    const-string v3, "\\t"

    .line 350
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    :cond_4b
    :goto_4b
    const/16 v4, 0x5c

    .line 363
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_50
    if-lt v3, v1, :cond_5a

    const/16 v4, 0x7e

    if-gt v3, v4, :cond_5a

    .line 366
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 368
    :cond_5a
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\u"

    .line 369
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    .line 370
    :goto_64
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x4

    if-ge v4, v5, :cond_74

    const-string v5, "0"

    .line 371
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 373
    :cond_74
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_7a
    return-void

    nop

    :pswitch_data_7c
    .packed-switch 0x9
        :pswitch_45
        :pswitch_3f
        :pswitch_26
        :pswitch_39
        :pswitch_33
    .end packed-switch
.end method

.method private isEbcdic(Ljava/io/BufferedInputStream;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1c

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_16

    goto :goto_1c

    :cond_16
    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1c
    :goto_1c
    return v2

    :cond_1d
    return v2
.end method

.method private declared-synchronized load(Ljava/io/Reader;)Lorg/acra/collector/CrashReportData;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/16 v1, 0x28

    .line 165
    :try_start_3
    new-array v1, v1, [C

    .line 169
    new-instance v2, Lorg/acra/collector/CrashReportData;

    invoke-direct {v2}, Lorg/acra/collector/CrashReportData;-><init>()V

    .line 170
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    move-object/from16 v5, p1

    invoke-direct {v3, v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    const/4 v6, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v12, v1

    const/4 v1, 0x0

    const/4 v7, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1e
    const/16 v16, 0x1

    .line 173
    :goto_20
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v4

    if-ne v4, v10, :cond_69

    if-ne v13, v6, :cond_32

    if-gt v14, v8, :cond_32

    .line 312
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "luni.08"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_32
    if-ne v7, v10, :cond_37

    if-lez v1, :cond_37

    move v7, v1

    :cond_37
    if-ltz v7, :cond_64

    .line 318
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v12, v11, v1}, Ljava/lang/String;-><init>([CII)V

    .line 319
    const-class v1, Lorg/acra/ReportField;

    invoke-virtual {v3, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/acra/ReportField;

    .line 320
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    if-ne v13, v9, :cond_61

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u0000"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 324
    :cond_61
    invoke-virtual {v2, v1, v3}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_64
    invoke-static/range {p1 .. p1}, Lorg/acra/collector/CollectorUtil;->safeClose(Ljava/io/Reader;)V
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_1ae

    .line 329
    monitor-exit p0

    return-object v2

    :cond_69
    int-to-char v4, v4

    .line 179
    :try_start_6a
    array-length v10, v12

    if-ne v1, v10, :cond_76

    .line 180
    array-length v10, v12

    mul-int/lit8 v10, v10, 0x2

    new-array v10, v10, [C

    .line 181
    invoke-static {v12, v11, v10, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v12, v10

    :cond_76
    const/16 v10, 0x85

    const/16 v11, 0xa

    if-ne v13, v6, :cond_ab

    const/16 v6, 0x10

    .line 185
    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    if-ltz v6, :cond_91

    shl-int/lit8 v15, v15, 0x4

    add-int/2addr v15, v6

    add-int/lit8 v14, v14, 0x1

    if-ge v14, v8, :cond_8f

    const/4 v6, 0x2

    :goto_8c
    const/4 v10, -0x1

    const/4 v11, 0x0

    goto :goto_20

    :cond_8f
    move v6, v15

    goto :goto_9b

    :cond_91
    if-gt v14, v8, :cond_8f

    .line 193
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "luni.09"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_9b
    add-int/lit8 v13, v1, 0x1

    int-to-char v8, v6

    .line 196
    aput-char v8, v12, v1

    if-eq v4, v11, :cond_a8

    if-eq v4, v10, :cond_a8

    move v15, v6

    move v1, v13

    goto/16 :goto_121

    :cond_a8
    move v15, v6

    move v1, v13

    const/4 v13, 0x0

    :cond_ab
    const/16 v6, 0xd

    if-ne v13, v9, :cond_f3

    if-eq v4, v11, :cond_ec

    if-eq v4, v6, :cond_e5

    const/16 v8, 0x62

    if-eq v4, v8, :cond_de

    const/16 v8, 0x66

    if-eq v4, v8, :cond_db

    const/16 v8, 0x6e

    if-eq v4, v8, :cond_d8

    const/16 v8, 0x72

    if-eq v4, v8, :cond_d5

    if-eq v4, v10, :cond_ec

    packed-switch v4, :pswitch_data_1b2

    goto :goto_e0

    :pswitch_c9
    const/4 v6, 0x2

    const/4 v8, 0x4

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_20

    :pswitch_d2
    const/16 v4, 0x9

    goto :goto_e0

    :cond_d5
    const/16 v4, 0xd

    goto :goto_e0

    :cond_d8
    const/16 v4, 0xa

    goto :goto_e0

    :cond_db
    const/16 v4, 0xc

    goto :goto_e0

    :cond_de
    const/16 v4, 0x8

    :goto_e0
    const/4 v6, 0x5

    :cond_e1
    :goto_e1
    const/4 v8, 0x4

    const/4 v11, 0x0

    goto/16 :goto_167

    :cond_e5
    const/4 v6, 0x2

    const/4 v8, 0x4

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x3

    goto/16 :goto_20

    :cond_ec
    const/4 v6, 0x2

    const/4 v8, 0x4

    :goto_ee
    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x5

    goto/16 :goto_20

    :cond_f3
    if-eq v4, v11, :cond_17b

    if-eq v4, v6, :cond_10e

    const/16 v8, 0x21

    if-eq v4, v8, :cond_128

    const/16 v8, 0x23

    if-eq v4, v8, :cond_128

    const/16 v6, 0x3a

    if-eq v4, v6, :cond_11d

    const/16 v6, 0x3d

    if-eq v4, v6, :cond_11d

    const/16 v6, 0x5c

    if-eq v4, v6, :cond_112

    if-eq v4, v10, :cond_10e

    goto :goto_13c

    :cond_10e
    const/4 v6, 0x5

    const/4 v8, 0x4

    goto/16 :goto_179

    :cond_112
    const/4 v4, 0x4

    if-ne v13, v4, :cond_116

    move v7, v1

    :cond_116
    const/4 v6, 0x2

    const/4 v8, 0x4

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x1

    goto/16 :goto_20

    :cond_11d
    const/4 v8, -0x1

    if-ne v7, v8, :cond_13c

    move v7, v1

    :goto_121
    const/4 v6, 0x2

    const/4 v8, 0x4

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    goto/16 :goto_20

    :cond_128
    const/4 v8, -0x1

    if-eqz v16, :cond_13c

    .line 237
    :goto_12b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v4

    if-ne v4, v8, :cond_132

    goto :goto_159

    :cond_132
    int-to-char v4, v4

    if-eq v4, v6, :cond_159

    if-eq v4, v11, :cond_159

    if-ne v4, v10, :cond_13a

    goto :goto_159

    :cond_13a
    const/4 v8, -0x1

    goto :goto_12b

    .line 286
    :cond_13c
    :goto_13c
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_15d

    const/4 v6, 0x3

    if-ne v13, v6, :cond_146

    const/4 v13, 0x5

    :cond_146
    if-eqz v1, :cond_158

    if-eq v1, v7, :cond_158

    const/4 v6, 0x5

    if-ne v13, v6, :cond_14e

    goto :goto_159

    :cond_14e
    const/4 v8, -0x1

    if-ne v7, v8, :cond_15e

    const/4 v6, 0x2

    const/4 v8, 0x4

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x4

    goto/16 :goto_20

    :cond_158
    const/4 v6, 0x5

    :cond_159
    :goto_159
    const/4 v6, 0x2

    const/4 v8, 0x4

    goto/16 :goto_8c

    :cond_15d
    const/4 v6, 0x5

    :cond_15e
    move v11, v13

    if-eq v11, v6, :cond_e1

    const/4 v8, 0x3

    if-ne v11, v8, :cond_166

    goto/16 :goto_e1

    :cond_166
    const/4 v8, 0x4

    :goto_167
    if-ne v11, v8, :cond_16c

    move v7, v1

    const/4 v13, 0x0

    goto :goto_16d

    :cond_16c
    move v13, v11

    :goto_16d
    add-int/lit8 v10, v1, 0x1

    .line 308
    aput-char v4, v12, v1

    move v1, v10

    const/4 v6, 0x2

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v16, 0x0

    goto/16 :goto_20

    :goto_179
    const/4 v4, 0x3

    goto :goto_183

    :cond_17b
    const/4 v4, 0x3

    const/4 v6, 0x5

    const/4 v8, 0x4

    if-ne v13, v4, :cond_183

    const/4 v6, 0x2

    goto/16 :goto_ee

    :cond_183
    :goto_183
    if-gtz v1, :cond_18d

    if-nez v1, :cond_18a

    if-nez v7, :cond_18a

    goto :goto_18d

    :cond_18a
    const/4 v10, -0x1

    const/4 v13, 0x0

    goto :goto_1a8

    :cond_18d
    :goto_18d
    const/4 v10, -0x1

    if-ne v7, v10, :cond_191

    move v7, v1

    .line 265
    :cond_191
    new-instance v11, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13, v1}, Ljava/lang/String;-><init>([CII)V

    .line 266
    const-class v1, Lorg/acra/ReportField;

    invoke-virtual {v11, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {v11, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a8
    .catchall {:try_start_6a .. :try_end_1a8} :catchall_1ae

    :goto_1a8
    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v11, 0x0

    goto/16 :goto_1e

    :catchall_1ae
    move-exception v0

    move-object v1, v0

    .line 163
    monitor-exit p0

    throw v1

    :pswitch_data_1b2
    .packed-switch 0x74
        :pswitch_d2
        :pswitch_c9
    .end packed-switch
.end method


# virtual methods
.method public load(Ljava/lang/String;)Lorg/acra/collector/CrashReportData;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/acra/CrashReportPersister;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid crash report fileName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1f
    :try_start_1f
    new-instance p1, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-direct {p1, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const v1, 0x7fffffff

    .line 72
    invoke-virtual {p1, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 73
    invoke-direct {p0, p1}, Lorg/acra/CrashReportPersister;->isEbcdic(Ljava/io/BufferedInputStream;)Z

    move-result v1

    .line 74
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    if-nez v1, :cond_44

    .line 77
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "ISO8859-1"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/acra/CrashReportPersister;->load(Ljava/io/Reader;)Lorg/acra/collector/CrashReportData;

    move-result-object p1
    :try_end_40
    .catchall {:try_start_1f .. :try_end_40} :catchall_51

    .line 82
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p1

    .line 79
    :cond_44
    :try_start_44
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1}, Lorg/acra/CrashReportPersister;->load(Ljava/io/Reader;)Lorg/acra/collector/CrashReportData;

    move-result-object p1
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_51

    .line 82
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p1

    :catchall_51
    move-exception p1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p1
.end method

.method public store(Lorg/acra/collector/CrashReportData;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/acra/CrashReportPersister;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p2

    .line 99
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0xc8

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 100
    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "ISO8859_1"

    invoke-direct {v2, p2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lorg/acra/collector/CrashReportData;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/acra/ReportField;

    invoke-virtual {v4}, Lorg/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 104
    invoke-direct {p0, v0, v4, v5}, Lorg/acra/CrashReportPersister;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const/16 v4, 0x3d

    .line 105
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v0, v3, v1}, Lorg/acra/CrashReportPersister;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v3, "\n"

    .line 107
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1d

    .line 111
    :cond_55
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_58
    .catchall {:try_start_7 .. :try_end_58} :catchall_5c

    .line 113
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_5c
    move-exception p1

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    throw p1
.end method
