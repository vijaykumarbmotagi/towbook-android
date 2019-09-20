.class public Lcom/towbook/utils/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/towbook/utils/HttpRequest$RequestOutputStream;,
        Lcom/towbook/utils/HttpRequest$FlushOperation;,
        Lcom/towbook/utils/HttpRequest$CloseOperation;,
        Lcom/towbook/utils/HttpRequest$Operation;,
        Lcom/towbook/utils/HttpRequest$HttpRequestException;,
        Lcom/towbook/utils/HttpRequest$Base64;,
        Lcom/towbook/utils/HttpRequest$ConnectionFactory;
    }
.end annotation


# static fields
.field private static final BOUNDARY:Ljava/lang/String; = "00content0boundary00"

.field public static final CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field private static CONNECTION_FACTORY:Lcom/towbook/utils/HttpRequest$ConnectionFactory; = null

.field public static final CONTENT_TYPE_FORM:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json"

.field private static final CONTENT_TYPE_MULTIPART:Ljava/lang/String; = "multipart/form-data; boundary=00content0boundary00"

.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final EMPTY_STRINGS:[Ljava/lang/String;

.field public static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field public static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEADER_ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field public static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final HEADER_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final HEADER_CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final HEADER_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEADER_DATE:Ljava/lang/String; = "Date"

.field public static final HEADER_ETAG:Ljava/lang/String; = "ETag"

.field public static final HEADER_EXPIRES:Ljava/lang/String; = "Expires"

.field public static final HEADER_IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final HEADER_LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final HEADER_LOCATION:Ljava/lang/String; = "Location"

.field public static final HEADER_PROXY_AUTHORIZATION:Ljava/lang/String; = "Proxy-Authorization"

.field public static final HEADER_REFERER:Ljava/lang/String; = "Referer"

.field public static final HEADER_SERVER:Ljava/lang/String; = "Server"

.field public static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_HEAD:Ljava/lang/String; = "HEAD"

.field public static final METHOD_OPTIONS:Ljava/lang/String; = "OPTIONS"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final METHOD_PUT:Ljava/lang/String; = "PUT"

.field public static final METHOD_TRACE:Ljava/lang/String; = "TRACE"

.field public static final PARAM_CHARSET:Ljava/lang/String; = "charset"

.field private static TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

.field private static TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private bufferSize:I

.field private connection:Ljava/net/HttpURLConnection;

.field private form:Z

.field private httpProxyHost:Ljava/lang/String;

.field private httpProxyPort:I

.field private ignoreCloseExceptions:Z

.field private multipart:Z

.field private output:Lcom/towbook/utils/HttpRequest$RequestOutputStream;

.field private final requestMethod:Ljava/lang/String;

.field private uncompress:Z

.field private final url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 255
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/towbook/utils/HttpRequest;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 260
    sget-object v0, Lcom/towbook/utils/HttpRequest$ConnectionFactory;->DEFAULT:Lcom/towbook/utils/HttpRequest$ConnectionFactory;

    sput-object v0, Lcom/towbook/utils/HttpRequest;->CONNECTION_FACTORY:Lcom/towbook/utils/HttpRequest$ConnectionFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/towbook/utils/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lcom/towbook/utils/HttpRequest;->ignoreCloseExceptions:Z

    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lcom/towbook/utils/HttpRequest;->uncompress:Z

    const/16 v0, 0x2000

    .line 269
    iput v0, p0, Lcom/towbook/utils/HttpRequest;->bufferSize:I

    .line 283
    :try_start_10
    new-instance v0, Ljava/net/URL;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/towbook/utils/HttpRequest;->url:Ljava/net/URL;
    :try_end_1b
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_1b} :catch_1e

    .line 287
    iput-object p2, p0, Lcom/towbook/utils/HttpRequest;->requestMethod:Ljava/lang/String;

    return-void

    :catch_1e
    move-exception p1

    .line 285
    new-instance p2, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {p2, p1}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/towbook/utils/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lcom/towbook/utils/HttpRequest;->ignoreCloseExceptions:Z

    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lcom/towbook/utils/HttpRequest;->uncompress:Z

    const/16 v0, 0x2000

    .line 269
    iput v0, p0, Lcom/towbook/utils/HttpRequest;->bufferSize:I

    .line 299
    iput-object p1, p0, Lcom/towbook/utils/HttpRequest;->url:Ljava/net/URL;

    .line 300
    iput-object p2, p0, Lcom/towbook/utils/HttpRequest;->requestMethod:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/towbook/utils/HttpRequest;)I
    .registers 1

    .line 96
    iget p0, p0, Lcom/towbook/utils/HttpRequest;->bufferSize:I

    return p0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 96
    invoke-static {p0}, Lcom/towbook/utils/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 6

    const/16 v0, 0x3f

    .line 368
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 369
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_13

    .line 371
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_13
    if-ge v1, v2, :cond_20

    .line 372
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x26

    if-eq p0, v0, :cond_20

    .line 373
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_20
    :goto_20
    return-object p1
.end method

.method private static addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    const/16 v0, 0x3a

    .line 360
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-ne v0, p0, :cond_13

    .line 361
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    return-object p1
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 440
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_6d

    .line 441
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_6d

    .line 444
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-static {p0, v0}, Lcom/towbook/utils/HttpRequest;->addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 447
    invoke-static {p0, v0}, Lcom/towbook/utils/HttpRequest;->addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 451
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 452
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 453
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 455
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 457
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 459
    :cond_3f
    :goto_3f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_68

    const/16 p1, 0x26

    .line 460
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 462
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 466
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 469
    :cond_68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6d
    :goto_6d
    return-object p0
.end method

.method public static varargs append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 483
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_56

    .line 484
    array-length v0, p1

    if-nez v0, :cond_a

    goto :goto_56

    .line 487
    :cond_a
    array-length v0, p1

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_17

    .line 488
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify an even number of parameter names/values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 491
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    invoke-static {p0, v0}, Lcom/towbook/utils/HttpRequest;->addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 494
    invoke-static {p0, v0}, Lcom/towbook/utils/HttpRequest;->addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    .line 497
    aget-object p0, p1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3d

    .line 498
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 499
    aget-object v2, p1, v2

    if-eqz v2, :cond_35

    .line 501
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 503
    :cond_35
    :goto_35
    array-length v2, p1

    if-ge v1, v2, :cond_51

    const/16 v2, 0x26

    .line 504
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 505
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    .line 507
    aget-object v2, p1, v2

    if-eqz v2, :cond_4e

    .line 509
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4e
    add-int/lit8 v1, v1, 0x2

    goto :goto_35

    .line 512
    :cond_51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_56
    :goto_56
    return-object p0
.end method

.method private createConnection()Ljava/net/HttpURLConnection;
    .registers 4

    .line 946
    :try_start_0
    iget-object v0, p0, Lcom/towbook/utils/HttpRequest;->httpProxyHost:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 947
    sget-object v0, Lcom/towbook/utils/HttpRequest;->CONNECTION_FACTORY:Lcom/towbook/utils/HttpRequest$ConnectionFactory;

    iget-object v1, p0, Lcom/towbook/utils/HttpRequest;->url:Ljava/net/URL;

    invoke-direct {p0}, Lcom/towbook/utils/HttpRequest;->createProxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/towbook/utils/HttpRequest$ConnectionFactory;->create(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    goto :goto_19

    .line 949
    :cond_11
    sget-object v0, Lcom/towbook/utils/HttpRequest;->CONNECTION_FACTORY:Lcom/towbook/utils/HttpRequest$ConnectionFactory;

    iget-object v1, p0, Lcom/towbook/utils/HttpRequest;->url:Ljava/net/URL;

    invoke-interface {v0, v1}, Lcom/towbook/utils/HttpRequest$ConnectionFactory;->create(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 950
    :goto_19
    iget-object v1, p0, Lcom/towbook/utils/HttpRequest;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception v0

    .line 953
    new-instance v1, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private createProxy()Ljava/net/Proxy;
    .registers 6

    .line 940
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/towbook/utils/HttpRequest;->httpProxyHost:Ljava/lang/String;

    iget v4, p0, Lcom/towbook/utils/HttpRequest;->httpProxyPort:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method public static delete(Ljava/lang/CharSequence;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 692
    new-instance v0, Lcom/towbook/utils/HttpRequest;

    const-string v1, "DELETE"

    invoke-direct {v0, p0, v1}, Lcom/towbook/utils/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static delete(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "**>;Z)",
            "Lcom/towbook/utils/HttpRequest;"
        }
    .end annotation

    .line 718
    invoke-static {p0, p1}, Lcom/towbook/utils/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_a

    .line 719
    invoke-static {p0}, Lcom/towbook/utils/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/towbook/utils/HttpRequest;->delete(Ljava/lang/CharSequence;)Lcom/towbook/utils/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static varargs delete(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/towbook/utils/HttpRequest;
    .registers 3

    .line 735
    invoke-static {p0, p2}, Lcom/towbook/utils/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_a

    .line 736
    invoke-static {p0}, Lcom/towbook/utils/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/towbook/utils/HttpRequest;->delete(Ljava/lang/CharSequence;)Lcom/towbook/utils/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static delete(Ljava/net/URL;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 703
    new-instance v0, Lcom/towbook/utils/HttpRequest;

    const-string v1, "DELETE"

    invoke-direct {v0, p0, v1}, Lcom/towbook/utils/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static encode(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 404
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_86

    .line 409
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    .line 410
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2c

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2c
    move-object v3, p0

    .line 415
    :try_start_2d
    new-instance p0, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 416
    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3f

    .line 417
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_74

    add-int/lit8 v0, v0, 0x1

    .line 418
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_74

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "+"

    const-string v2, "%2B"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_74
    .catch Ljava/net/URISyntaxException; {:try_start_2d .. :try_end_74} :catch_75

    :cond_74
    return-object p0

    :catch_75
    move-exception p0

    .line 423
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Parsing URI failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 425
    new-instance p0, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {p0, v0}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw p0

    :catch_86
    move-exception p0

    .line 406
    new-instance v0, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {v0, p0}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public static get(Ljava/lang/CharSequence;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 524
    new-instance v0, Lcom/towbook/utils/HttpRequest;

    const-string v1, "GET"

    invoke-direct {v0, p0, v1}, Lcom/towbook/utils/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static get(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "**>;Z)",
            "Lcom/towbook/utils/HttpRequest;"
        }
    .end annotation

    .line 550
    invoke-static {p0, p1}, Lcom/towbook/utils/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_a

    .line 551
    invoke-static {p0}, Lcom/towbook/utils/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/towbook/utils/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/towbook/utils/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static varargs get(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/towbook/utils/HttpRequest;
    .registers 3

    .line 567
    invoke-static {p0, p2}, Lcom/towbook/utils/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_a

    .line 568
    invoke-static {p0}, Lcom/towbook/utils/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/towbook/utils/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/towbook/utils/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/net/URL;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 535
    new-instance v0, Lcom/towbook/utils/HttpRequest;

    const-string v1, "GET"

    invoke-direct {v0, p0, v1}, Lcom/towbook/utils/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getTrustedFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 312
    sget-object v0, Lcom/towbook/utils/HttpRequest;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_36

    const/4 v0, 0x1

    .line 313
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/towbook/utils/HttpRequest$1;

    invoke-direct {v2}, Lcom/towbook/utils/HttpRequest$1;-><init>()V

    aput-object v2, v0, v1

    :try_start_f
    const-string v1, "TLS"

    .line 328
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    .line 329
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 330
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/towbook/utils/HttpRequest;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_24
    .catch Ljava/security/GeneralSecurityException; {:try_start_f .. :try_end_24} :catch_25

    goto :goto_36

    :catch_25
    move-exception v0

    .line 332
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Security exception configuring SSL context"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 335
    new-instance v0, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {v0, v1}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 339
    :cond_36
    :goto_36
    sget-object v0, Lcom/towbook/utils/HttpRequest;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method private static getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 1

    .line 343
    sget-object v0, Lcom/towbook/utils/HttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_b

    .line 344
    new-instance v0, Lcom/towbook/utils/HttpRequest$2;

    invoke-direct {v0}, Lcom/towbook/utils/HttpRequest$2;-><init>()V

    sput-object v0, Lcom/towbook/utils/HttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    .line 351
    :cond_b
    sget-object v0, Lcom/towbook/utils/HttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method private static getValidCharset(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_9

    .line 304
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    return-object p0

    :cond_9
    const-string p0, "UTF-8"

    return-object p0
.end method

.method public static head(Ljava/lang/CharSequence;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 748
    new-instance v0, Lcom/towbook/utils/HttpRequest;

    const-string v1, "HEAD"

    invoke-direct {v0, p0, v1}, Lcom/towbook/utils/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static head(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "**>;Z)",
            "Lcom/towbook/utils/HttpRequest;"
        }
    .end annotation

    .line 774
    invoke-static {p0, p1}, Lcom/towbook/utils/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_a

    .line 775
    invoke-static {p0}, Lcom/towbook/utils/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/towbook/utils/HttpRequest;->head(Ljava/lang/CharSequence;)Lcom/towbook/utils/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static varargs head(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/towbook/utils/HttpRequest;
    .registers 3

    .line 791
    invoke-static {p0, p2}, Lcom/towbook/utils/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_a

    .line 792
    invoke-static {p0}, Lcom/towbook/utils/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/towbook/utils/HttpRequest;->head(Ljava/lang/CharSequence;)Lcom/towbook/utils/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static head(Ljava/net/URL;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 759
    new-instance v0, Lcom/towbook/utils/HttpRequest;

    const-string v1, "HEAD"

    invoke-direct {v0, p0, v1}, Lcom/towbook/utils/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static keepAlive(Z)V
    .registers 2

    const-string v0, "http.keepAlive"

    .line 849
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/towbook/utils/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static maxConnections(I)V
    .registers 2

    const-string v0, "http.maxConnections"

    .line 860
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/towbook/utils/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static varargs nonProxyHosts([Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_2c

    .line 900
    array-length v0, p0

    if-lez v0, :cond_2c

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 902
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1d

    .line 904
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 905
    :cond_1d
    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "http.nonProxyHosts"

    .line 906
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/towbook/utils/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_32

    :cond_2c
    const-string p0, "http.nonProxyHosts"

    const/4 v0, 0x0

    .line 908
    invoke-static {p0, v0}, Lcom/towbook/utils/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :goto_32
    return-void
.end method

.method public static options(Ljava/lang/CharSequence;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 804
    new-instance v0, Lcom/towbook/utils/HttpRequest;

    const-string v1, "OPTIONS"

    invoke-direct {v0, p0, v1}, Lcom/towbook/utils/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static options(Ljava/net/URL;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 815
    new-instance v0, Lcom/towbook/utils/HttpRequest;

    const-string v1, "OPTIONS"

    invoke-direct {v0, p0, v1}, Lcom/towbook/utils/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/CharSequence;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 580
    new-instance v0, Lcom/towbook/utils/HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, p0, v1}, Lcom/towbook/utils/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "**>;Z)",
            "Lcom/towbook/utils/HttpRequest;"
        }
    .end annotation

    .line 606
    invoke-static {p0, p1}, Lcom/towbook/utils/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_a

    .line 607
    invoke-static {p0}, Lcom/towbook/utils/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/towbook/utils/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/towbook/utils/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static varargs post(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/towbook/utils/HttpRequest;
    .registers 3

    .line 623
    invoke-static {p0, p2}, Lcom/towbook/utils/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_a

    .line 624
    invoke-static {p0}, Lcom/towbook/utils/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/towbook/utils/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/towbook/utils/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static post(Ljava/net/URL;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 591
    new-instance v0, Lcom/towbook/utils/HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, p0, v1}, Lcom/towbook/utils/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static proxyHost(Ljava/lang/String;)V
    .registers 2

    const-string v0, "http.proxyHost"

    .line 872
    invoke-static {v0, p0}, Lcom/towbook/utils/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "https.proxyHost"

    .line 873
    invoke-static {v0, p0}, Lcom/towbook/utils/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static proxyPort(I)V
    .registers 2

    .line 885
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "http.proxyPort"

    .line 886
    invoke-static {v0, p0}, Lcom/towbook/utils/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "https.proxyPort"

    .line 887
    invoke-static {v0, p0}, Lcom/towbook/utils/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static put(Ljava/lang/CharSequence;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 636
    new-instance v0, Lcom/towbook/utils/HttpRequest;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Lcom/towbook/utils/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static put(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "**>;Z)",
            "Lcom/towbook/utils/HttpRequest;"
        }
    .end annotation

    .line 662
    invoke-static {p0, p1}, Lcom/towbook/utils/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_a

    .line 663
    invoke-static {p0}, Lcom/towbook/utils/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/towbook/utils/HttpRequest;->put(Ljava/lang/CharSequence;)Lcom/towbook/utils/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static varargs put(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/towbook/utils/HttpRequest;
    .registers 3

    .line 679
    invoke-static {p0, p2}, Lcom/towbook/utils/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_a

    .line 680
    invoke-static {p0}, Lcom/towbook/utils/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/towbook/utils/HttpRequest;->put(Ljava/lang/CharSequence;)Lcom/towbook/utils/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static put(Ljava/net/URL;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 647
    new-instance v0, Lcom/towbook/utils/HttpRequest;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Lcom/towbook/utils/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static setConnectionFactory(Lcom/towbook/utils/HttpRequest$ConnectionFactory;)V
    .registers 1

    if-nez p0, :cond_7

    .line 382
    sget-object p0, Lcom/towbook/utils/HttpRequest$ConnectionFactory;->DEFAULT:Lcom/towbook/utils/HttpRequest$ConnectionFactory;

    sput-object p0, Lcom/towbook/utils/HttpRequest;->CONNECTION_FACTORY:Lcom/towbook/utils/HttpRequest$ConnectionFactory;

    goto :goto_9

    .line 384
    :cond_7
    sput-object p0, Lcom/towbook/utils/HttpRequest;->CONNECTION_FACTORY:Lcom/towbook/utils/HttpRequest$ConnectionFactory;

    :goto_9
    return-void
.end method

.method private static setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_8

    .line 923
    new-instance v0, Lcom/towbook/utils/HttpRequest$3;

    invoke-direct {v0, p0, p1}, Lcom/towbook/utils/HttpRequest$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 930
    :cond_8
    new-instance v0, Lcom/towbook/utils/HttpRequest$4;

    invoke-direct {v0, p0}, Lcom/towbook/utils/HttpRequest$4;-><init>(Ljava/lang/String;)V

    .line 936
    :goto_d
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static trace(Ljava/lang/CharSequence;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 827
    new-instance v0, Lcom/towbook/utils/HttpRequest;

    const-string v1, "TRACE"

    invoke-direct {v0, p0, v1}, Lcom/towbook/utils/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static trace(Ljava/net/URL;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 838
    new-instance v0, Lcom/towbook/utils/HttpRequest;

    const-string v1, "TRACE"

    invoke-direct {v0, p0, v1}, Lcom/towbook/utils/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 3

    const-string v0, "Accept"

    .line 2025
    invoke-virtual {p0, v0, p1}, Lcom/towbook/utils/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public acceptCharset(Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 3

    const-string v0, "Accept-Charset"

    .line 1814
    invoke-virtual {p0, v0, p1}, Lcom/towbook/utils/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public acceptEncoding(Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 3

    const-string v0, "Accept-Encoding"

    .line 1794
    invoke-virtual {p0, v0, p1}, Lcom/towbook/utils/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public acceptGzipEncoding()Lcom/towbook/utils/HttpRequest;
    .registers 2

    const-string v0, "gzip"

    .line 1804
    invoke-virtual {p0, v0}, Lcom/towbook/utils/HttpRequest;->acceptEncoding(Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public acceptJson()Lcom/towbook/utils/HttpRequest;
    .registers 2

    const-string v0, "application/json"

    .line 2034
    invoke-virtual {p0, v0}, Lcom/towbook/utils/HttpRequest;->accept(Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public authorization(Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 3

    const-string v0, "Authorization"

    .line 1896
    invoke-virtual {p0, v0, p1}, Lcom/towbook/utils/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public badRequest()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1063
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->code()I

    move-result v0

    const/16 v1, 0x190

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public basic(Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 5

    .line 1918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/towbook/utils/HttpRequest$Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/towbook/utils/HttpRequest;->authorization(Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public body(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/towbook/utils/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1227
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->body()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public body(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/towbook/utils/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1241
    invoke-virtual {p0, p2}, Lcom/towbook/utils/HttpRequest;->body(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public body()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1215
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/towbook/utils/HttpRequest;->body(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public body(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1198
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->byteStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 1200
    :try_start_4
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/towbook/utils/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/towbook/utils/HttpRequest;

    .line 1201
    invoke-static {p1}, Lcom/towbook/utils/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_13} :catch_14

    return-object p1

    :catch_14
    move-exception p1

    .line 1203
    new-instance v0, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {v0, p1}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public buffer()Ljava/io/BufferedInputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1279
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->stream()Ljava/io/InputStream;

    move-result-object v1

    iget v2, p0, Lcom/towbook/utils/HttpRequest;->bufferSize:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public bufferSize()I
    .registers 2

    .line 1148
    iget v0, p0, Lcom/towbook/utils/HttpRequest;->bufferSize:I

    return v0
.end method

.method public bufferSize(I)Lcom/towbook/utils/HttpRequest;
    .registers 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_b

    .line 1135
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Size must be greater than zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1136
    :cond_b
    iput p1, p0, Lcom/towbook/utils/HttpRequest;->bufferSize:I

    return-object p0
.end method

.method public bufferedReader()Ljava/io/BufferedReader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1372
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/towbook/utils/HttpRequest;->bufferedReader(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public bufferedReader(Ljava/lang/String;)Ljava/io/BufferedReader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1360
    new-instance v0, Ljava/io/BufferedReader;

    invoke-virtual {p0, p1}, Lcom/towbook/utils/HttpRequest;->reader(Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object p1

    iget v1, p0, Lcom/towbook/utils/HttpRequest;->bufferSize:I

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    return-object v0
.end method

.method protected byteStream()Ljava/io/ByteArrayOutputStream;
    .registers 3

    .line 1180
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->contentLength()I

    move-result v0

    if-lez v0, :cond_c

    .line 1182
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-object v1

    .line 1184
    :cond_c
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-object v0
.end method

.method public bytes()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1262
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->byteStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 1264
    :try_start_4
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/towbook/utils/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/towbook/utils/HttpRequest;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_10

    .line 1268
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_10
    move-exception v0

    .line 1266
    new-instance v1, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public cacheControl()Ljava/lang/String;
    .registers 2

    const-string v0, "Cache-Control"

    .line 1850
    invoke-virtual {p0, v0}, Lcom/towbook/utils/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public charset()Ljava/lang/String;
    .registers 3

    const-string v0, "Content-Type"

    const-string v1, "charset"

    .line 1753
    invoke-virtual {p0, v0, v1}, Lcom/towbook/utils/HttpRequest;->parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chunk(I)Lcom/towbook/utils/HttpRequest;
    .registers 3

    .line 1118
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-object p0
.end method

.method protected closeOutput()Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2091
    iget-object v0, p0, Lcom/towbook/utils/HttpRequest;->output:Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    if-nez v0, :cond_5

    return-object p0

    .line 2093
    :cond_5
    iget-boolean v0, p0, Lcom/towbook/utils/HttpRequest;->multipart:Z

    if-eqz v0, :cond_10

    .line 2094
    iget-object v0, p0, Lcom/towbook/utils/HttpRequest;->output:Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    const-string v1, "\r\n--00content0boundary00--\r\n"

    invoke-virtual {v0, v1}, Lcom/towbook/utils/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    .line 2095
    :cond_10
    iget-boolean v0, p0, Lcom/towbook/utils/HttpRequest;->ignoreCloseExceptions:Z

    if-eqz v0, :cond_1a

    .line 2097
    :try_start_14
    iget-object v0, p0, Lcom/towbook/utils/HttpRequest;->output:Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    invoke-virtual {v0}, Lcom/towbook/utils/HttpRequest$RequestOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_1f

    goto :goto_1f

    .line 2102
    :cond_1a
    iget-object v0, p0, Lcom/towbook/utils/HttpRequest;->output:Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    invoke-virtual {v0}, Lcom/towbook/utils/HttpRequest$RequestOutputStream;->close()V

    :catch_1f
    :goto_1f
    const/4 v0, 0x0

    .line 2103
    iput-object v0, p0, Lcom/towbook/utils/HttpRequest;->output:Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    return-object p0
.end method

.method protected closeOutputQuietly()Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2116
    :try_start_0
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->closeOutput()Lcom/towbook/utils/HttpRequest;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    .line 2118
    new-instance v1, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public code()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1005
    :try_start_0
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->closeOutput()Lcom/towbook/utils/HttpRequest;

    .line 1006
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v0

    .line 1008
    new-instance v1, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public code(Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1022
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-object p0
.end method

.method public connectTimeout(I)Lcom/towbook/utils/HttpRequest;
    .registers 3

    .line 1488
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-object p0
.end method

.method public contentEncoding()Ljava/lang/String;
    .registers 2

    const-string v0, "Content-Encoding"

    .line 1823
    invoke-virtual {p0, v0}, Lcom/towbook/utils/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()I
    .registers 2

    const-string v0, "Content-Length"

    .line 1994
    invoke-virtual {p0, v0}, Lcom/towbook/utils/HttpRequest;->intHeader(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public contentLength(I)Lcom/towbook/utils/HttpRequest;
    .registers 3

    .line 2014
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    return-object p0
.end method

.method public contentLength(Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 2

    .line 2004
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/towbook/utils/HttpRequest;->contentLength(I)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public contentType(Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 3

    const/4 v0, 0x0

    .line 1961
    invoke-virtual {p0, p1, v0}, Lcom/towbook/utils/HttpRequest;->contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 5

    if-eqz p2, :cond_23

    .line 1972
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23

    const-string v0, "Content-Type"

    .line 1974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; charset="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/towbook/utils/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1

    :cond_23
    const-string p2, "Content-Type"

    .line 1976
    invoke-virtual {p0, p2, p1}, Lcom/towbook/utils/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public contentType()Ljava/lang/String;
    .registers 2

    const-string v0, "Content-Type"

    .line 1985
    invoke-virtual {p0, v0}, Lcom/towbook/utils/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/towbook/utils/HttpRequest;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2047
    new-instance v6, Lcom/towbook/utils/HttpRequest$8;

    iget-boolean v3, p0, Lcom/towbook/utils/HttpRequest;->ignoreCloseExceptions:Z

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/towbook/utils/HttpRequest$8;-><init>(Lcom/towbook/utils/HttpRequest;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    .line 2057
    invoke-virtual {v6}, Lcom/towbook/utils/HttpRequest$8;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/towbook/utils/HttpRequest;

    return-object p1
.end method

.method protected copy(Ljava/io/Reader;Ljava/io/Writer;)Lcom/towbook/utils/HttpRequest;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2070
    new-instance v6, Lcom/towbook/utils/HttpRequest$9;

    iget-boolean v3, p0, Lcom/towbook/utils/HttpRequest;->ignoreCloseExceptions:Z

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/towbook/utils/HttpRequest$9;-><init>(Lcom/towbook/utils/HttpRequest;Ljava/io/Closeable;ZLjava/io/Reader;Ljava/io/Writer;)V

    .line 2080
    invoke-virtual {v6}, Lcom/towbook/utils/HttpRequest$9;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/towbook/utils/HttpRequest;

    return-object p1
.end method

.method public created()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1043
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->code()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public date()J
    .registers 3

    const-string v0, "Date"

    .line 1841
    invoke-virtual {p0, v0}, Lcom/towbook/utils/HttpRequest;->dateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public dateHeader(Ljava/lang/String;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 1571
    invoke-virtual {p0, p1, v0, v1}, Lcom/towbook/utils/HttpRequest;->dateHeader(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public dateHeader(Ljava/lang/String;J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1585
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->closeOutputQuietly()Lcom/towbook/utils/HttpRequest;

    .line 1586
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public disconnect()Lcom/towbook/utils/HttpRequest;
    .registers 2

    .line 1107
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p0
.end method

.method public eTag()Ljava/lang/String;
    .registers 2

    const-string v0, "ETag"

    .line 1859
    invoke-virtual {p0, v0}, Lcom/towbook/utils/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public expires()J
    .registers 3

    const-string v0, "Expires"

    .line 1868
    invoke-virtual {p0, v0}, Lcom/towbook/utils/HttpRequest;->dateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public followRedirects(Z)Lcom/towbook/utils/HttpRequest;
    .registers 3

    .line 2655
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-object p0
.end method

.method public form(Ljava/lang/Object;Ljava/lang/Object;)Lcom/towbook/utils/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 2526
    invoke-virtual {p0, p1, p2, v0}, Lcom/towbook/utils/HttpRequest;->form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2543
    iget-boolean v0, p0, Lcom/towbook/utils/HttpRequest;->form:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_d

    const-string v2, "application/x-www-form-urlencoded"

    .line 2545
    invoke-virtual {p0, v2, p3}, Lcom/towbook/utils/HttpRequest;->contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    .line 2546
    iput-boolean v1, p0, Lcom/towbook/utils/HttpRequest;->form:Z

    .line 2548
    :cond_d
    invoke-static {p3}, Lcom/towbook/utils/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2550
    :try_start_11
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->openOutput()Lcom/towbook/utils/HttpRequest;

    if-nez v0, :cond_1d

    .line 2552
    iget-object v0, p0, Lcom/towbook/utils/HttpRequest;->output:Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/towbook/utils/HttpRequest$RequestOutputStream;->write(I)V

    .line 2553
    :cond_1d
    iget-object v0, p0, Lcom/towbook/utils/HttpRequest;->output:Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/towbook/utils/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    .line 2554
    iget-object p1, p0, Lcom/towbook/utils/HttpRequest;->output:Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Lcom/towbook/utils/HttpRequest$RequestOutputStream;->write(I)V

    if-eqz p2, :cond_40

    .line 2556
    iget-object p1, p0, Lcom/towbook/utils/HttpRequest;->output:Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/towbook/utils/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/towbook/utils/HttpRequest$RequestOutputStream;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_40} :catch_41

    :cond_40
    return-object p0

    :catch_41
    move-exception p1

    .line 2558
    new-instance p2, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {p2, p1}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public form(Ljava/util/Map$Entry;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lcom/towbook/utils/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 2494
    invoke-virtual {p0, p1, v0}, Lcom/towbook/utils/HttpRequest;->form(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public form(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/towbook/utils/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2510
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/towbook/utils/HttpRequest;->form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public form(Ljava/util/Map;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Lcom/towbook/utils/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 2480
    invoke-virtual {p0, p1, v0}, Lcom/towbook/utils/HttpRequest;->form(Ljava/util/Map;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public form(Ljava/util/Map;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/towbook/utils/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2573
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2574
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2575
    invoke-virtual {p0, v0, p2}, Lcom/towbook/utils/HttpRequest;->form(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    goto :goto_e

    :cond_1e
    return-object p0
.end method

.method public getConnection()Ljava/net/HttpURLConnection;
    .registers 2

    .line 968
    iget-object v0, p0, Lcom/towbook/utils/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_a

    .line 969
    invoke-direct {p0}, Lcom/towbook/utils/HttpRequest;->createConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/utils/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 970
    :cond_a
    iget-object v0, p0, Lcom/towbook/utils/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method protected getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_71

    .line 1712
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_71

    .line 1715
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3b

    .line 1716
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    if-eqz v3, :cond_70

    if-ne v3, v1, :cond_1b

    goto :goto_70

    .line 1720
    :cond_1b
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_23

    :goto_22
    move v5, v1

    :cond_23
    if-ge v3, v5, :cond_6f

    const/16 v7, 0x3d

    .line 1725
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-eq v7, v6, :cond_66

    if-ge v7, v5, :cond_66

    .line 1727
    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    add-int/lit8 v7, v7, 0x1

    .line 1728
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1729
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_66

    const/4 p1, 0x2

    if-le v7, p1, :cond_65

    const/4 p1, 0x0

    .line 1731
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x22

    if-ne p2, p1, :cond_65

    sub-int/2addr v7, v4

    .line 1732
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p2, p1, :cond_65

    .line 1733
    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_65
    return-object v3

    :cond_66
    add-int/lit8 v3, v5, 0x1

    .line 1739
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ne v5, v6, :cond_23

    goto :goto_22

    :cond_6f
    return-object v0

    :cond_70
    :goto_70
    return-object v0

    :cond_71
    :goto_71
    return-object v0
.end method

.method protected getParams(Ljava/lang/String;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_81

    .line 1666
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_81

    .line 1669
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3b

    .line 1670
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-eqz v2, :cond_7c

    if-ne v2, v0, :cond_1b

    goto :goto_7c

    .line 1674
    :cond_1b
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_23

    move v4, v0

    .line 1678
    :cond_23
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_28
    :goto_28
    if-ge v2, v4, :cond_7b

    const/16 v7, 0x3d

    .line 1680
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-eq v7, v5, :cond_71

    if-ge v7, v4, :cond_71

    .line 1682
    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1683
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_71

    add-int/lit8 v7, v7, 0x1

    .line 1684
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1685
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_71

    const/4 v9, 0x2

    if-le v8, v9, :cond_6e

    const/4 v9, 0x0

    .line 1687
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x22

    if-ne v10, v9, :cond_6e

    add-int/lit8 v8, v8, -0x1

    .line 1688
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v10, v9, :cond_6e

    .line 1689
    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_71

    .line 1691
    :cond_6e
    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_71
    :goto_71
    add-int/lit8 v2, v4, 0x1

    .line 1696
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v4, v5, :cond_28

    move v4, v0

    goto :goto_28

    :cond_7b
    return-object v6

    .line 1672
    :cond_7c
    :goto_7c
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 1667
    :cond_81
    :goto_81
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public header(Ljava/lang/String;Ljava/lang/Number;)Lcom/towbook/utils/HttpRequest;
    .registers 3

    if-eqz p2, :cond_7

    .line 1512
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    :goto_8
    invoke-virtual {p0, p1, p2}, Lcom/towbook/utils/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 4

    .line 1500
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public header(Ljava/util/Map$Entry;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/towbook/utils/HttpRequest;"
        }
    .end annotation

    .line 1536
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/towbook/utils/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1547
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->closeOutputQuietly()Lcom/towbook/utils/HttpRequest;

    .line 1548
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public headers(Ljava/util/Map;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/towbook/utils/HttpRequest;"
        }
    .end annotation

    .line 1523
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1524
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1525
    invoke-virtual {p0, v0}, Lcom/towbook/utils/HttpRequest;->header(Ljava/util/Map$Entry;)Lcom/towbook/utils/HttpRequest;

    goto :goto_e

    :cond_1e
    return-object p0
.end method

.method public headers()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1558
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->closeOutputQuietly()Lcom/towbook/utils/HttpRequest;

    .line 1559
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public headers(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 1624
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->headers()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 1625
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_2b

    .line 1628
    :cond_d
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_28

    .line 1629
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 1630
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    .line 1632
    :cond_28
    sget-object p1, Lcom/towbook/utils/HttpRequest;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object p1

    .line 1626
    :cond_2b
    :goto_2b
    sget-object p1, Lcom/towbook/utils/HttpRequest;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object p1
.end method

.method public ifModifiedSince(J)Lcom/towbook/utils/HttpRequest;
    .registers 4

    .line 1940
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    return-object p0
.end method

.method public ifNoneMatch(Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 3

    const-string v0, "If-None-Match"

    .line 1951
    invoke-virtual {p0, v0, p1}, Lcom/towbook/utils/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public ignoreCloseExceptions(Z)Lcom/towbook/utils/HttpRequest;
    .registers 2

    .line 983
    iput-boolean p1, p0, Lcom/towbook/utils/HttpRequest;->ignoreCloseExceptions:Z

    return-object p0
.end method

.method public ignoreCloseExceptions()Z
    .registers 2

    .line 994
    iget-boolean v0, p0, Lcom/towbook/utils/HttpRequest;->ignoreCloseExceptions:Z

    return v0
.end method

.method public intHeader(Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 1598
    invoke-virtual {p0, p1, v0}, Lcom/towbook/utils/HttpRequest;->intHeader(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public intHeader(Ljava/lang/String;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1613
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->closeOutputQuietly()Lcom/towbook/utils/HttpRequest;

    .line 1614
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public isBodyEmpty()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1252
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->contentLength()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public lastModified()J
    .registers 3

    const-string v0, "Last-Modified"

    .line 1877
    invoke-virtual {p0, v0}, Lcom/towbook/utils/HttpRequest;->dateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public location()Ljava/lang/String;
    .registers 2

    const-string v0, "Location"

    .line 1886
    invoke-virtual {p0, v0}, Lcom/towbook/utils/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public message()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1094
    :try_start_0
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->closeOutput()Lcom/towbook/utils/HttpRequest;

    .line 1095
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    .line 1097
    new-instance v1, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public method()Ljava/lang/String;
    .registers 2

    .line 2627
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notFound()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1073
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->code()I

    move-result v0

    const/16 v1, 0x194

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public notModified()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1083
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->code()I

    move-result v0

    const/16 v1, 0x130

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public ok()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1033
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected openOutput()Lcom/towbook/utils/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2129
    iget-object v0, p0, Lcom/towbook/utils/HttpRequest;->output:Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    if-eqz v0, :cond_5

    return-object p0

    .line 2131
    :cond_5
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 2133
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "charset"

    .line 2132
    invoke-virtual {p0, v0, v1}, Lcom/towbook/utils/HttpRequest;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2134
    new-instance v1, Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget v3, p0, Lcom/towbook/utils/HttpRequest;->bufferSize:I

    invoke-direct {v1, v2, v0, v3}, Lcom/towbook/utils/HttpRequest$RequestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/towbook/utils/HttpRequest;->output:Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    return-object p0
.end method

.method public parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1643
    invoke-virtual {p0, p1}, Lcom/towbook/utils/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/towbook/utils/HttpRequest;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parameters(Ljava/lang/String;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1656
    invoke-virtual {p0, p1}, Lcom/towbook/utils/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/towbook/utils/HttpRequest;->getParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public part(Ljava/lang/String;Ljava/io/File;)Lcom/towbook/utils/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2274
    invoke-virtual {p0, p1, v0, p2}, Lcom/towbook/utils/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public part(Ljava/lang/String;Ljava/io/InputStream;)Lcom/towbook/utils/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2322
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/towbook/utils/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public part(Ljava/lang/String;Ljava/lang/Number;)Lcom/towbook/utils/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2247
    invoke-virtual {p0, p1, v0, p2}, Lcom/towbook/utils/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 4

    const/4 v0, 0x0

    .line 2198
    invoke-virtual {p0, p1, v0, p2}, Lcom/towbook/utils/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/towbook/utils/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2288
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/towbook/utils/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/towbook/utils/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    if-eqz p3, :cond_7

    .line 2261
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_8

    :cond_7
    const/4 p3, 0x0

    :goto_8
    invoke-virtual {p0, p1, p2, p3}, Lcom/towbook/utils/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2212
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/towbook/utils/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/towbook/utils/HttpRequest;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2305
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_f

    .line 2309
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/towbook/utils/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1

    :catch_f
    move-exception p1

    .line 2307
    new-instance p2, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {p2, p1}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/towbook/utils/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2339
    :try_start_0
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->startPart()Lcom/towbook/utils/HttpRequest;

    .line 2340
    invoke-virtual {p0, p1, p2, p3}, Lcom/towbook/utils/HttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    .line 2341
    iget-object p1, p0, Lcom/towbook/utils/HttpRequest;->output:Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    invoke-virtual {p0, p4, p1}, Lcom/towbook/utils/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/towbook/utils/HttpRequest;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p1

    .line 2343
    new-instance p2, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {p2, p1}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2228
    :try_start_0
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->startPart()Lcom/towbook/utils/HttpRequest;

    .line 2229
    invoke-virtual {p0, p1, p2, p3}, Lcom/towbook/utils/HttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    .line 2230
    iget-object p1, p0, Lcom/towbook/utils/HttpRequest;->output:Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    invoke-virtual {p1, p4}, Lcom/towbook/utils/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/towbook/utils/HttpRequest$RequestOutputStream;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p1

    .line 2232
    new-instance p2, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {p2, p1}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2358
    invoke-virtual {p0, p1}, Lcom/towbook/utils/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Lcom/towbook/utils/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/towbook/utils/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Lcom/towbook/utils/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public proxyAuthorization(Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 3

    const-string v0, "Proxy-Authorization"

    .line 1906
    invoke-virtual {p0, v0, p1}, Lcom/towbook/utils/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public proxyBasic(Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 5

    .line 1930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/towbook/utils/HttpRequest$Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/towbook/utils/HttpRequest;->proxyAuthorization(Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public readTimeout(I)Lcom/towbook/utils/HttpRequest;
    .registers 3

    .line 1477
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-object p0
.end method

.method public reader()Ljava/io/InputStreamReader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1346
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/towbook/utils/HttpRequest;->reader(Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public reader(Ljava/lang/String;)Ljava/io/InputStreamReader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1332
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->stream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {p1}, Lcom/towbook/utils/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception p1

    .line 1334
    new-instance v0, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {v0, p1}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public receive(Ljava/io/File;)Lcom/towbook/utils/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1385
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget p1, p0, Lcom/towbook/utils/HttpRequest;->bufferSize:I

    invoke-direct {v0, v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_c} :catch_1a

    .line 1389
    new-instance p1, Lcom/towbook/utils/HttpRequest$5;

    iget-boolean v1, p0, Lcom/towbook/utils/HttpRequest;->ignoreCloseExceptions:Z

    invoke-direct {p1, p0, v0, v1, v0}, Lcom/towbook/utils/HttpRequest$5;-><init>(Lcom/towbook/utils/HttpRequest;Ljava/io/Closeable;ZLjava/io/OutputStream;)V

    .line 1395
    invoke-virtual {p1}, Lcom/towbook/utils/HttpRequest$5;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/towbook/utils/HttpRequest;

    return-object p1

    :catch_1a
    move-exception p1

    .line 1387
    new-instance v0, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {v0, p1}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public receive(Ljava/io/OutputStream;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1408
    :try_start_0
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/towbook/utils/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    .line 1410
    new-instance v0, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {v0, p1}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public receive(Ljava/io/PrintStream;)Lcom/towbook/utils/HttpRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1423
    invoke-virtual {p0, p1}, Lcom/towbook/utils/HttpRequest;->receive(Ljava/io/OutputStream;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public receive(Ljava/io/Writer;)Lcom/towbook/utils/HttpRequest;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1460
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->bufferedReader()Ljava/io/BufferedReader;

    move-result-object v4

    .line 1461
    new-instance v6, Lcom/towbook/utils/HttpRequest$7;

    iget-boolean v3, p0, Lcom/towbook/utils/HttpRequest;->ignoreCloseExceptions:Z

    move-object v0, v6

    move-object v1, p0

    move-object v2, v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/towbook/utils/HttpRequest$7;-><init>(Lcom/towbook/utils/HttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/io/Writer;)V

    .line 1467
    invoke-virtual {v6}, Lcom/towbook/utils/HttpRequest$7;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/towbook/utils/HttpRequest;

    return-object p1
.end method

.method public receive(Ljava/lang/Appendable;)Lcom/towbook/utils/HttpRequest;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1435
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->bufferedReader()Ljava/io/BufferedReader;

    move-result-object v4

    .line 1436
    new-instance v6, Lcom/towbook/utils/HttpRequest$6;

    iget-boolean v3, p0, Lcom/towbook/utils/HttpRequest;->ignoreCloseExceptions:Z

    move-object v0, v6

    move-object v1, p0

    move-object v2, v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/towbook/utils/HttpRequest$6;-><init>(Lcom/towbook/utils/HttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/lang/Appendable;)V

    .line 1449
    invoke-virtual {v6}, Lcom/towbook/utils/HttpRequest$6;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/towbook/utils/HttpRequest;

    return-object p1
.end method

.method public referer(Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 3

    const-string v0, "Referer"

    .line 1773
    invoke-virtual {p0, v0, p1}, Lcom/towbook/utils/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public send(Ljava/io/File;)Lcom/towbook/utils/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2371
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_a} :catch_f

    .line 2375
    invoke-virtual {p0, v0}, Lcom/towbook/utils/HttpRequest;->send(Ljava/io/InputStream;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1

    :catch_f
    move-exception p1

    .line 2373
    new-instance v0, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {v0, p1}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public send(Ljava/io/InputStream;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2400
    :try_start_0
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->openOutput()Lcom/towbook/utils/HttpRequest;

    .line 2401
    iget-object v0, p0, Lcom/towbook/utils/HttpRequest;->output:Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    invoke-virtual {p0, p1, v0}, Lcom/towbook/utils/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/towbook/utils/HttpRequest;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p1

    .line 2403
    new-instance v0, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {v0, p1}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public send(Ljava/io/Reader;)Lcom/towbook/utils/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2419
    :try_start_0
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->openOutput()Lcom/towbook/utils/HttpRequest;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_20

    .line 2423
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/towbook/utils/HttpRequest;->output:Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    iget-object v2, p0, Lcom/towbook/utils/HttpRequest;->output:Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    .line 2424
    invoke-static {v2}, Lcom/towbook/utils/HttpRequest$RequestOutputStream;->access$100(Lcom/towbook/utils/HttpRequest$RequestOutputStream;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 2425
    new-instance v1, Lcom/towbook/utils/HttpRequest$10;

    invoke-direct {v1, p0, v0, p1, v0}, Lcom/towbook/utils/HttpRequest$10;-><init>(Lcom/towbook/utils/HttpRequest;Ljava/io/Flushable;Ljava/io/Reader;Ljava/io/Writer;)V

    .line 2431
    invoke-virtual {v1}, Lcom/towbook/utils/HttpRequest$10;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/towbook/utils/HttpRequest;

    return-object p1

    :catch_20
    move-exception p1

    .line 2421
    new-instance v0, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {v0, p1}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public send(Ljava/lang/CharSequence;)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2446
    :try_start_0
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->openOutput()Lcom/towbook/utils/HttpRequest;

    .line 2447
    iget-object v0, p0, Lcom/towbook/utils/HttpRequest;->output:Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/towbook/utils/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/towbook/utils/HttpRequest$RequestOutputStream;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p1

    .line 2449
    new-instance v0, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {v0, p1}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public send([B)Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2386
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/towbook/utils/HttpRequest;->send(Ljava/io/InputStream;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public server()Ljava/lang/String;
    .registers 2

    const-string v0, "Server"

    .line 1832
    invoke-virtual {p0, v0}, Lcom/towbook/utils/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serverError()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1053
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->code()I

    move-result v0

    const/16 v1, 0x1f4

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected startPart()Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2146
    iget-boolean v0, p0, Lcom/towbook/utils/HttpRequest;->multipart:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 2147
    iput-boolean v0, p0, Lcom/towbook/utils/HttpRequest;->multipart:Z

    const-string v0, "multipart/form-data; boundary=00content0boundary00"

    .line 2148
    invoke-virtual {p0, v0}, Lcom/towbook/utils/HttpRequest;->contentType(Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/utils/HttpRequest;->openOutput()Lcom/towbook/utils/HttpRequest;

    .line 2149
    iget-object v0, p0, Lcom/towbook/utils/HttpRequest;->output:Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    const-string v1, "--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lcom/towbook/utils/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    goto :goto_1f

    .line 2151
    :cond_18
    iget-object v0, p0, Lcom/towbook/utils/HttpRequest;->output:Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    const-string v1, "\r\n--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lcom/towbook/utils/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    :goto_1f
    return-object p0
.end method

.method public stream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1290
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->code()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_18

    .line 1292
    :try_start_8
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_11

    goto :goto_40

    :catch_11
    move-exception v0

    .line 1294
    new-instance v1, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 1297
    :cond_18
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_40

    .line 1300
    :try_start_22
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_2b

    goto :goto_40

    :catch_2b
    move-exception v0

    .line 1302
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->contentLength()I

    move-result v1

    if-lez v1, :cond_38

    .line 1303
    new-instance v1, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 1305
    :cond_38
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1309
    :cond_40
    :goto_40
    iget-boolean v1, p0, Lcom/towbook/utils/HttpRequest;->uncompress:Z

    if-eqz v1, :cond_5e

    const-string v1, "gzip"

    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->contentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    goto :goto_5e

    .line 1313
    :cond_51
    :try_start_51
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_56} :catch_57

    return-object v1

    :catch_57
    move-exception v0

    .line 1315
    new-instance v1, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_5e
    :goto_5e
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trustAllCerts()Lcom/towbook/utils/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2588
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 2589
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_11

    .line 2590
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 2591
    invoke-static {}, Lcom/towbook/utils/HttpRequest;->getTrustedFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_11
    return-object p0
.end method

.method public trustAllHosts()Lcom/towbook/utils/HttpRequest;
    .registers 3

    .line 2605
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 2606
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_11

    .line 2607
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 2608
    invoke-static {}, Lcom/towbook/utils/HttpRequest;->getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_11
    return-object p0
.end method

.method public uncompress(Z)Lcom/towbook/utils/HttpRequest;
    .registers 2

    .line 1170
    iput-boolean p1, p0, Lcom/towbook/utils/HttpRequest;->uncompress:Z

    return-object p0
.end method

.method public url()Ljava/net/URL;
    .registers 2

    .line 2618
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public useCaches(Z)Lcom/towbook/utils/HttpRequest;
    .registers 3

    .line 1783
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-object p0
.end method

.method public useProxy(Ljava/lang/String;I)Lcom/towbook/utils/HttpRequest;
    .registers 4

    .line 2639
    iget-object v0, p0, Lcom/towbook/utils/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_c

    .line 2640
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The connection has already been created. This method must be called before reading or writing to the request."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2642
    :cond_c
    iput-object p1, p0, Lcom/towbook/utils/HttpRequest;->httpProxyHost:Ljava/lang/String;

    .line 2643
    iput p2, p0, Lcom/towbook/utils/HttpRequest;->httpProxyPort:I

    return-object p0
.end method

.method public userAgent(Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 3

    const-string v0, "User-Agent"

    .line 1763
    invoke-virtual {p0, v0, p1}, Lcom/towbook/utils/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method protected writePartHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2165
    invoke-virtual {p0, p1, p2, v0}, Lcom/towbook/utils/HttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method protected writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "form-data; name=\""

    .line 2180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_17

    const-string p1, "\"; filename=\""

    .line 2182
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const/16 p1, 0x22

    .line 2183
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "Content-Disposition"

    .line 2184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/towbook/utils/HttpRequest;->partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    if-eqz p3, :cond_2c

    const-string p1, "Content-Type"

    .line 2186
    invoke-virtual {p0, p1, p3}, Lcom/towbook/utils/HttpRequest;->partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/towbook/utils/HttpRequest;

    :cond_2c
    const-string p1, "\r\n"

    .line 2187
    invoke-virtual {p0, p1}, Lcom/towbook/utils/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/towbook/utils/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public writer()Ljava/io/OutputStreamWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/towbook/utils/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 2462
    :try_start_0
    invoke-virtual {p0}, Lcom/towbook/utils/HttpRequest;->openOutput()Lcom/towbook/utils/HttpRequest;

    .line 2463
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/towbook/utils/HttpRequest;->output:Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    iget-object v2, p0, Lcom/towbook/utils/HttpRequest;->output:Lcom/towbook/utils/HttpRequest$RequestOutputStream;

    invoke-static {v2}, Lcom/towbook/utils/HttpRequest$RequestOutputStream;->access$100(Lcom/towbook/utils/HttpRequest$RequestOutputStream;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    .line 2465
    new-instance v1, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/towbook/utils/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
