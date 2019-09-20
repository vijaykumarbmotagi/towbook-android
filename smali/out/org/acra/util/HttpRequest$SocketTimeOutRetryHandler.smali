.class Lorg/acra/util/HttpRequest$SocketTimeOutRetryHandler;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/util/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketTimeOutRetryHandler"
.end annotation


# instance fields
.field private final httpParams:Lorg/apache/http/params/HttpParams;

.field private final maxNrRetries:I


# direct methods
.method private constructor <init>(Lorg/apache/http/params/HttpParams;I)V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/acra/util/HttpRequest$SocketTimeOutRetryHandler;->httpParams:Lorg/apache/http/params/HttpParams;

    .line 66
    iput p2, p0, Lorg/acra/util/HttpRequest$SocketTimeOutRetryHandler;->maxNrRetries:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/http/params/HttpParams;ILorg/acra/util/HttpRequest$1;)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/acra/util/HttpRequest$SocketTimeOutRetryHandler;-><init>(Lorg/apache/http/params/HttpParams;I)V

    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .registers 6

    .line 71
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_5c

    .line 72
    iget p1, p0, Lorg/acra/util/HttpRequest$SocketTimeOutRetryHandler;->maxNrRetries:I

    if-gt p2, p1, :cond_42

    .line 74
    iget-object p1, p0, Lorg/acra/util/HttpRequest$SocketTimeOutRetryHandler;->httpParams:Lorg/apache/http/params/HttpParams;

    if-eqz p1, :cond_37

    .line 75
    iget-object p1, p0, Lorg/acra/util/HttpRequest$SocketTimeOutRetryHandler;->httpParams:Lorg/apache/http/params/HttpParams;

    invoke-static {p1}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    .line 76
    iget-object p2, p0, Lorg/acra/util/HttpRequest$SocketTimeOutRetryHandler;->httpParams:Lorg/apache/http/params/HttpParams;

    invoke-static {p2, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 77
    sget-object p2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object p3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocketTimeOut - increasing time out to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " millis and trying again"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 80
    :cond_37
    sget-object p1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object p2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string p3, "SocketTimeOut - no HttpParams, cannot increase time out. Trying again with current settings"

    invoke-interface {p1, p2, p3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    const/4 p1, 0x1

    return p1

    .line 87
    :cond_42
    sget-object p1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object p2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SocketTimeOut but exceeded max number of retries : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/acra/util/HttpRequest$SocketTimeOutRetryHandler;->maxNrRetries:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    const/4 p1, 0x0

    return p1
.end method
