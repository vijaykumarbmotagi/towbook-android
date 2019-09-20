.class public Lcom/towbook/utils/OkConnectionFactory;
.super Ljava/lang/Object;
.source "OkConnectionFactory.java"

# interfaces
.implements Lcom/towbook/utils/HttpRequest$ConnectionFactory;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field private final client:Lcom/squareup/okhttp/OkHttpClient;

.field private factory:Lcom/squareup/okhttp/OkUrlFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    invoke-direct {p0, v0}, Lcom/towbook/utils/OkConnectionFactory;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/OkHttpClient;)V
    .registers 5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    .line 30
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Client must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_d
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v1, 0xafc8

    invoke-virtual {p1, v1, v2, v0}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v0}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 36
    iput-object p1, p0, Lcom/towbook/utils/OkConnectionFactory;->client:Lcom/squareup/okhttp/OkHttpClient;

    .line 37
    new-instance v0, Lcom/squareup/okhttp/OkUrlFactory;

    invoke-direct {v0, p1}, Lcom/squareup/okhttp/OkUrlFactory;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    iput-object v0, p0, Lcom/towbook/utils/OkConnectionFactory;->factory:Lcom/squareup/okhttp/OkUrlFactory;

    return-void
.end method


# virtual methods
.method public create(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/towbook/utils/OkConnectionFactory;->factory:Lcom/squareup/okhttp/OkUrlFactory;

    instance-of v1, v0, Lcom/squareup/okhttp/OkUrlFactory;

    if-nez v1, :cond_b

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    goto :goto_11

    :cond_b
    check-cast v0, Lcom/squareup/okhttp/OkUrlFactory;

    invoke-static {v0, p1}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2Instrumentation;->open(Lcom/squareup/okhttp/OkUrlFactory;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    :goto_11
    return-object p1
.end method

.method public create(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Per-connection proxy is not supported. Use OkHttpClient\'s setProxy instead."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getClient()Lcom/squareup/okhttp/OkHttpClient;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/towbook/utils/OkConnectionFactory;->client:Lcom/squareup/okhttp/OkHttpClient;

    return-object v0
.end method
