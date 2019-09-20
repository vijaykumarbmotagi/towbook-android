.class public Lroboguice/util/Ln$Print;
.super Ljava/lang/Object;
.source "Ln.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lroboguice/util/Ln;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Print"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getScope(I)Ljava/lang/String;
    .registers 3

    .line 267
    sget-object v0, Lroboguice/util/Ln;->config:Lroboguice/util/Ln$BaseConfig;

    iget v0, v0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_3a

    .line 268
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object p0, v0, p0

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lroboguice/util/Ln;->config:Lroboguice/util/Ln$BaseConfig;

    iget-object v1, v1, Lroboguice/util/Ln$BaseConfig;->scope:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 272
    :cond_3a
    sget-object p0, Lroboguice/util/Ln;->config:Lroboguice/util/Ln$BaseConfig;

    iget-object p0, p0, Lroboguice/util/Ln$BaseConfig;->scope:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public println(ILjava/lang/String;)I
    .registers 4

    const/4 v0, 0x5

    .line 257
    invoke-static {v0}, Lroboguice/util/Ln$Print;->getScope(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lroboguice/util/Ln$Print;->processMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected processMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 261
    sget-object v0, Lroboguice/util/Ln;->config:Lroboguice/util/Ln$BaseConfig;

    iget v0, v0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1e

    const-string v0, "%s %s"

    const/4 v1, 0x2

    .line 262
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1e
    return-object p1
.end method
