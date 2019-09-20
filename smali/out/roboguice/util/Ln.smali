.class public Lroboguice/util/Ln;
.super Ljava/lang/Object;
.source "Ln.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lroboguice/util/Ln$Print;,
        Lroboguice/util/Ln$BaseConfig;,
        Lroboguice/util/Ln$Config;
    }
.end annotation


# static fields
.field protected static config:Lroboguice/util/Ln$BaseConfig;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected static print:Lroboguice/util/Ln$Print;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Lroboguice/util/Ln$BaseConfig;

    invoke-direct {v0}, Lroboguice/util/Ln$BaseConfig;-><init>()V

    sput-object v0, Lroboguice/util/Ln;->config:Lroboguice/util/Ln$BaseConfig;

    .line 66
    new-instance v0, Lroboguice/util/Ln$Print;

    invoke-direct {v0}, Lroboguice/util/Ln$Print;-><init>()V

    sput-object v0, Lroboguice/util/Ln;->print:Lroboguice/util/Ln$Print;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 4

    .line 101
    sget-object v0, Lroboguice/util/Ln;->config:Lroboguice/util/Ln$BaseConfig;

    iget v0, v0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_9

    const/4 p0, 0x0

    return p0

    .line 104
    :cond_9
    invoke-static {p0}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 105
    array-length v0, p1

    if-lez v0, :cond_14

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 106
    :cond_14
    sget-object p1, Lroboguice/util/Ln;->print:Lroboguice/util/Ln$Print;

    invoke-virtual {p1, v1, p0}, Lroboguice/util/Ln$Print;->println(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/Throwable;)I
    .registers 3

    .line 97
    sget-object v0, Lroboguice/util/Ln;->config:Lroboguice/util/Ln$BaseConfig;

    iget v0, v0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_12

    sget-object v0, Lroboguice/util/Ln;->print:Lroboguice/util/Ln$Print;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lroboguice/util/Ln$Print;->println(ILjava/lang/String;)I

    move-result p0

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static varargs d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 6

    .line 110
    sget-object v0, Lroboguice/util/Ln;->config:Lroboguice/util/Ln$BaseConfig;

    iget v0, v0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_9

    const/4 p0, 0x0

    return p0

    .line 113
    :cond_9
    invoke-static {p1}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p2

    if-lez v2, :cond_19

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 115
    sget-object p1, Lroboguice/util/Ln;->print:Lroboguice/util/Ln$Print;

    invoke-virtual {p1, v1, p0}, Lroboguice/util/Ln$Print;->println(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static varargs e(Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 4

    .line 167
    sget-object v0, Lroboguice/util/Ln;->config:Lroboguice/util/Ln$BaseConfig;

    iget v0, v0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_9

    const/4 p0, 0x0

    return p0

    .line 170
    :cond_9
    invoke-static {p0}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 171
    array-length v0, p1

    if-lez v0, :cond_14

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 172
    :cond_14
    sget-object p1, Lroboguice/util/Ln;->print:Lroboguice/util/Ln$Print;

    invoke-virtual {p1, v1, p0}, Lroboguice/util/Ln$Print;->println(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/Throwable;)I
    .registers 3

    .line 163
    sget-object v0, Lroboguice/util/Ln;->config:Lroboguice/util/Ln$BaseConfig;

    iget v0, v0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_12

    sget-object v0, Lroboguice/util/Ln;->print:Lroboguice/util/Ln$Print;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lroboguice/util/Ln$Print;->println(ILjava/lang/String;)I

    move-result p0

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 6

    .line 176
    sget-object v0, Lroboguice/util/Ln;->config:Lroboguice/util/Ln$BaseConfig;

    iget v0, v0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_9

    const/4 p0, 0x0

    return p0

    .line 179
    :cond_9
    invoke-static {p1}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p2

    if-lez v2, :cond_19

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 181
    sget-object p1, Lroboguice/util/Ln;->print:Lroboguice/util/Ln$Print;

    invoke-virtual {p1, v1, p0}, Lroboguice/util/Ln$Print;->println(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getConfig()Lroboguice/util/Ln$Config;
    .registers 1

    .line 193
    sget-object v0, Lroboguice/util/Ln;->config:Lroboguice/util/Ln$BaseConfig;

    return-object v0
.end method

.method public static varargs i(Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 4

    .line 123
    sget-object v0, Lroboguice/util/Ln;->config:Lroboguice/util/Ln$BaseConfig;

    iget v0, v0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_9

    const/4 p0, 0x0

    return p0

    .line 126
    :cond_9
    invoke-static {p0}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 127
    array-length v0, p1

    if-lez v0, :cond_14

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 128
    :cond_14
    sget-object p1, Lroboguice/util/Ln;->print:Lroboguice/util/Ln$Print;

    invoke-virtual {p1, v1, p0}, Lroboguice/util/Ln$Print;->println(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/Throwable;)I
    .registers 3

    .line 119
    sget-object v0, Lroboguice/util/Ln;->config:Lroboguice/util/Ln$BaseConfig;

    iget v0, v0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_12

    sget-object v0, Lroboguice/util/Ln;->print:Lroboguice/util/Ln$Print;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lroboguice/util/Ln$Print;->println(ILjava/lang/String;)I

    move-result p0

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static varargs i(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 6

    .line 132
    sget-object v0, Lroboguice/util/Ln;->config:Lroboguice/util/Ln$BaseConfig;

    iget v0, v0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_9

    const/4 p0, 0x0

    return p0

    .line 135
    :cond_9
    invoke-static {p1}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p2

    if-lez v2, :cond_19

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 137
    sget-object p1, Lroboguice/util/Ln;->print:Lroboguice/util/Ln$Print;

    invoke-virtual {p1, v1, p0}, Lroboguice/util/Ln$Print;->println(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static isDebugEnabled()Z
    .registers 2

    .line 185
    sget-object v0, Lroboguice/util/Ln;->config:Lroboguice/util/Ln$BaseConfig;

    iget v0, v0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static isVerboseEnabled()Z
    .registers 2

    .line 189
    sget-object v0, Lroboguice/util/Ln;->config:Lroboguice/util/Ln$BaseConfig;

    iget v0, v0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static logLevelToString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_18

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_6
    const-string p0, "ASSERT"

    return-object p0

    :pswitch_9
    const-string p0, "ERROR"

    return-object p0

    :pswitch_c
    const-string p0, "WARN"

    return-object p0

    :pswitch_f
    const-string p0, "INFO"

    return-object p0

    :pswitch_12
    const-string p0, "DEBUG"

    return-object p0

    :pswitch_15
    const-string p0, "VERBOSE"

    return-object p0

    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static varargs v(Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 4

    .line 79
    sget-object v0, Lroboguice/util/Ln;->config:Lroboguice/util/Ln$BaseConfig;

    iget v0, v0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_9

    const/4 p0, 0x0

    return p0

    .line 82
    :cond_9
    invoke-static {p0}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 83
    array-length v0, p1

    if-lez v0, :cond_14

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 84
    :cond_14
    sget-object p1, Lroboguice/util/Ln;->print:Lroboguice/util/Ln$Print;

    invoke-virtual {p1, v1, p0}, Lroboguice/util/Ln$Print;->println(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/Throwable;)I
    .registers 3

    .line 75
    sget-object v0, Lroboguice/util/Ln;->config:Lroboguice/util/Ln$BaseConfig;

    iget v0, v0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_12

    sget-object v0, Lroboguice/util/Ln;->print:Lroboguice/util/Ln$Print;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lroboguice/util/Ln$Print;->println(ILjava/lang/String;)I

    move-result p0

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static varargs v(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 6

    .line 88
    sget-object v0, Lroboguice/util/Ln;->config:Lroboguice/util/Ln$BaseConfig;

    iget v0, v0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_9

    const/4 p0, 0x0

    return p0

    .line 91
    :cond_9
    invoke-static {p1}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p2

    if-lez v2, :cond_19

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 93
    sget-object p1, Lroboguice/util/Ln;->print:Lroboguice/util/Ln$Print;

    invoke-virtual {p1, v1, p0}, Lroboguice/util/Ln$Print;->println(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static varargs w(Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 4

    .line 145
    sget-object v0, Lroboguice/util/Ln;->config:Lroboguice/util/Ln$BaseConfig;

    iget v0, v0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_9

    const/4 p0, 0x0

    return p0

    .line 148
    :cond_9
    invoke-static {p0}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 149
    array-length v0, p1

    if-lez v0, :cond_14

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 150
    :cond_14
    sget-object p1, Lroboguice/util/Ln;->print:Lroboguice/util/Ln$Print;

    invoke-virtual {p1, v1, p0}, Lroboguice/util/Ln$Print;->println(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/Throwable;)I
    .registers 3

    .line 141
    sget-object v0, Lroboguice/util/Ln;->config:Lroboguice/util/Ln$BaseConfig;

    iget v0, v0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_12

    sget-object v0, Lroboguice/util/Ln;->print:Lroboguice/util/Ln$Print;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lroboguice/util/Ln$Print;->println(ILjava/lang/String;)I

    move-result p0

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static varargs w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 6

    .line 154
    sget-object v0, Lroboguice/util/Ln;->config:Lroboguice/util/Ln$BaseConfig;

    iget v0, v0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_9

    const/4 p0, 0x0

    return p0

    .line 157
    :cond_9
    invoke-static {p1}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p2

    if-lez v2, :cond_19

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 159
    sget-object p1, Lroboguice/util/Ln;->print:Lroboguice/util/Ln$Print;

    invoke-virtual {p1, v1, p0}, Lroboguice/util/Ln$Print;->println(ILjava/lang/String;)I

    move-result p0

    return p0
.end method
