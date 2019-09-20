.class public Lcom/google/android/libraries/places/internal/dh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/lm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/internal/lm;"
    }
.end annotation


# instance fields
.field public final a:Lcom/bumptech/glide/RequestManager;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/RequestManager;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/dh;->a:Lcom/bumptech/glide/RequestManager;

    return-void
.end method

.method public static a(Lcom/android/volley/RequestQueue;Lcom/google/android/libraries/places/internal/di;)Lcom/google/android/libraries/places/internal/ft;
    .registers 3

    .line 14
    new-instance v0, Lcom/google/android/libraries/places/internal/ft;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/ft;-><init>(Lcom/android/volley/RequestQueue;Lcom/google/android/libraries/places/internal/di;)V

    return-object v0
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/16 v0, 0x40

    const/4 v1, 0x0

    .line 1
    :try_start_3
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 2
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_1a

    goto :goto_23

    .line 4
    :cond_1a
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p0, p0, v2

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/dh;->a(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_22} :catch_24

    return-object p0

    :cond_23
    :goto_23
    return-object v1

    :catch_24
    move-exception p0

    const-string v0, "CredentialsHelper"

    const-string v2, "Unable to get certificate fingerprint for package: "

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3d

    :cond_38
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3d
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private static a(Landroid/content/pm/Signature;)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    :try_start_0
    const-string v0, "SHA-1"

    .line 8
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 10
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base16()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    const-string v0, "CredentialsHelper"

    const-string v1, "Unable to get certificate fingerprint."

    .line 12
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Lcom/bumptech/glide/request/FutureTarget;)V
    .registers 2

    const/4 v0, 0x0

    .line 37
    invoke-interface {p0, v0}, Lcom/bumptech/glide/request/FutureTarget;->cancel(Z)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/libraries/places/internal/r;Lcom/google/android/libraries/places/internal/dm;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<HttpPhotoResponseT:",
            "Lcom/google/android/libraries/places/internal/s<",
            "Ljava/lang/Object;",
            "+",
            "Lcom/google/android/libraries/places/internal/ax;",
            ">;>(",
            "Lcom/google/android/libraries/places/internal/r<",
            "Ljava/lang/Object;",
            "*>;",
            "Lcom/google/android/libraries/places/internal/dm;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "THttpPhotoResponseT;>;"
        }
    .end annotation

    .line 20
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/r;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/r;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/r;->a()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object p1

    .line 21
    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/google/android/libraries/places/internal/dh;->a(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/libraries/places/internal/dm;Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/libraries/places/internal/dm;Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;
    .registers 9
    .param p4    # Lcom/google/android/gms/tasks/CancellationToken;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<HttpPhotoResponseT:",
            "Lcom/google/android/libraries/places/internal/s<",
            "Ljava/lang/Object;",
            "+",
            "Lcom/google/android/libraries/places/internal/ax;",
            ">;>(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/libraries/places/internal/dm;",
            "Lcom/google/android/gms/tasks/CancellationToken;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "THttpPhotoResponseT;>;"
        }
    .end annotation

    if-eqz p4, :cond_8

    .line 23
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0, p4}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>(Lcom/google/android/gms/tasks/CancellationToken;)V

    goto :goto_d

    .line 24
    :cond_8
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 25
    :goto_d
    new-instance v1, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    invoke-direct {v1}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;-><init>()V

    .line 26
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    goto :goto_1a

    .line 29
    :cond_36
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/dh;->a:Lcom/bumptech/glide/RequestManager;

    .line 30
    invoke-virtual {p2}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    new-instance v2, Lcom/bumptech/glide/load/model/GlideUrl;

    .line 31
    invoke-virtual {v1}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->build()Lcom/bumptech/glide/load/model/LazyHeaders;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    invoke-virtual {p2, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/q;

    invoke-direct {p2, v0, p3}, Lcom/google/android/libraries/places/internal/q;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/libraries/places/internal/dm;)V

    .line 32
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->submit()Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p1

    if-eqz p4, :cond_60

    .line 35
    new-instance p2, Lcom/google/android/libraries/places/internal/p;

    invoke-direct {p2, p1}, Lcom/google/android/libraries/places/internal/p;-><init>(Lcom/bumptech/glide/request/FutureTarget;)V

    invoke-virtual {p4, p2}, Lcom/google/android/gms/tasks/CancellationToken;->onCanceledRequested(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;

    .line 36
    :cond_60
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .line 15
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
