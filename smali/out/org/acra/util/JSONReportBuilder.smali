.class public Lorg/acra/util/JSONReportBuilder;
.super Ljava/lang/Object;
.source "JSONReportBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/util/JSONReportBuilder$JSONReportException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addJSONFromProperty(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/16 v0, 0x3d

    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_3e

    const/4 v2, 0x0

    .line 143
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v1

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-static {p1}, Lorg/acra/util/JSONReportBuilder;->guessType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 146
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 147
    check-cast p1, Ljava/lang/String;

    const-string v0, "\\\\n"

    const-string v3, "\n"

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2d
    const-string v0, "\\."

    .line 149
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 150
    array-length v3, v0

    if-le v3, v1, :cond_3a

    .line 151
    invoke-static {p0, v0, p1}, Lorg/acra/util/JSONReportBuilder;->addJSONSubTree(Lorg/json/JSONObject;[Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_45

    .line 153
    :cond_3a
    invoke-virtual {p0, v2, p1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_45

    .line 156
    :cond_3e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :goto_45
    return-void
.end method

.method private static addJSONSubTree(Lorg/json/JSONObject;[Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p0

    const/4 p0, 0x0

    .line 192
    :goto_3
    array-length v2, p1

    if-ge p0, v2, :cond_57

    .line 193
    aget-object v2, p1, p0

    .line 194
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge p0, v3, :cond_51

    const/4 v3, 0x0

    .line 196
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 197
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 198
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4f

    .line 200
    :cond_1d
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 201
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_2a

    .line 202
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_43

    .line 203
    :cond_2a
    instance-of v4, v4, Lorg/json/JSONArray;

    if-eqz v4, :cond_43

    .line 205
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 206
    :goto_33
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_43

    .line 207
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_40

    goto :goto_43

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_43
    :goto_43
    if-nez v3, :cond_4f

    .line 216
    sget-object p0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object p1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Unknown json subtree type, see issue #186"

    invoke-interface {p0, p1, p2}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4f
    :goto_4f
    move-object v1, v3

    goto :goto_54

    .line 223
    :cond_51
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_54
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_57
    return-void
.end method

.method public static buildJSONReport(Lorg/acra/collector/CrashReportData;)Lorg/json/JSONObject;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/acra/util/JSONReportBuilder$JSONReportException;
        }
    .end annotation

    .line 69
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 71
    invoke-virtual {p0}, Lorg/acra/collector/CrashReportData;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/acra/ReportField;

    .line 75
    :try_start_1a
    invoke-virtual {v3}, Lorg/acra/ReportField;->containsKeyValuePairs()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 76
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 77
    invoke-virtual {p0, v3}, Lorg/acra/collector/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v5

    .line 78
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x400

    invoke-direct {v6, v7, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_35} :catch_85
    .catchall {:try_start_1a .. :try_end_35} :catchall_83

    .line 81
    :goto_35
    :try_start_35
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_67

    .line 82
    invoke-static {v4, v2}, Lorg/acra/util/JSONReportBuilder;->addJSONFromProperty(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3e} :catch_45
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_3e} :catch_42
    .catchall {:try_start_35 .. :try_end_3e} :catchall_3f

    goto :goto_35

    :catchall_3f
    move-exception p0

    move-object v2, v6

    goto :goto_9d

    :catch_42
    move-exception p0

    move-object v2, v6

    goto :goto_86

    :catch_45
    move-exception v2

    .line 85
    :try_start_46
    sget-object v5, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v7, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error while converting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/acra/ReportField;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " to JSON."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8, v2}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    :cond_67
    invoke-virtual {v3}, Lorg/acra/ReportField;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_6e} :catch_42
    .catchall {:try_start_46 .. :try_end_6e} :catchall_3f

    move-object v2, v6

    goto :goto_7f

    .line 90
    :cond_70
    :try_start_70
    invoke-virtual {v3}, Lorg/acra/ReportField;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lorg/acra/collector/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/acra/util/JSONReportBuilder;->guessType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7f
    .catch Lorg/json/JSONException; {:try_start_70 .. :try_end_7f} :catch_85
    .catchall {:try_start_70 .. :try_end_7f} :catchall_83

    .line 95
    :goto_7f
    invoke-static {v2}, Lorg/acra/collector/CollectorUtil;->safeClose(Ljava/io/Reader;)V

    goto :goto_e

    :catchall_83
    move-exception p0

    goto :goto_9d

    :catch_85
    move-exception p0

    .line 93
    :goto_86
    :try_start_86
    new-instance v0, Lorg/acra/util/JSONReportBuilder$JSONReportException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create JSON object for key "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/acra/util/JSONReportBuilder$JSONReportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_9d
    .catchall {:try_start_86 .. :try_end_9d} :catchall_83

    .line 95
    :goto_9d
    invoke-static {v2}, Lorg/acra/collector/CollectorUtil;->safeClose(Ljava/io/Reader;)V

    throw p0

    :cond_a1
    return-object v0
.end method

.method private static guessType(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    const-string v0, "true"

    .line 161
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    .line 162
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_e
    const-string v0, "false"

    .line 163
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 p0, 0x0

    .line 164
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1c
    const-string v0, "(?:^|\\s)([1-9](?:\\d*|(?:\\d{0,2})(?:,\\d{3})*)(?:\\.\\d*[1-9])?|0?\\.\\d*[1-9]|0)(?:\\s|$)"

    .line 166
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 167
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 169
    :try_start_2a
    invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0
    :try_end_2e
    .catch Ljava/text/ParseException; {:try_start_2a .. :try_end_2e} :catch_2f

    return-object v0

    :catch_2f
    :cond_2f
    return-object p0
.end method
