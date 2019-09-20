.class public final Lcom/google/android/libraries/places/api/Places;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lcom/google/android/libraries/places/internal/au;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Lcom/google/android/libraries/places/internal/au;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/au;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/api/Places;->a:Lcom/google/android/libraries/places/internal/au;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/google/android/libraries/places/internal/dn;)Lcom/google/android/libraries/places/api/net/PlacesClient;
    .registers 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/libraries/places/internal/dn;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/google/android/libraries/places/api/Places;

    monitor-enter v0

    :try_start_3
    const-string v1, "Context must not be null."

    .line 26
    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {}, Lcom/google/android/libraries/places/api/Places;->isInitialized()Z

    move-result v1

    const-string v2, "Places must be initialized first."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 29
    invoke-static {}, Lcom/google/android/libraries/places/internal/fk;->c()Lcom/google/android/libraries/places/internal/fo;

    move-result-object v1

    .line 30
    invoke-virtual {v1, p0}, Lcom/google/android/libraries/places/internal/fo;->b(Landroid/content/Context;)Lcom/google/android/libraries/places/internal/fo;

    move-result-object p0

    sget-object v1, Lcom/google/android/libraries/places/api/Places;->a:Lcom/google/android/libraries/places/internal/au;

    .line 31
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/fo;->a(Lcom/google/android/libraries/places/internal/au;)Lcom/google/android/libraries/places/internal/fo;

    move-result-object p0

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/fo;->a(Lcom/google/android/libraries/places/internal/dn;)Lcom/google/android/libraries/places/internal/fo;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fo;->a()Lcom/google/android/libraries/places/internal/fk;

    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fk;->a()Lcom/google/android/libraries/places/api/net/PlacesClient;

    move-result-object p0
    :try_end_2b
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_2b} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_2b} :catch_2f
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2d

    monitor-exit v0

    return-object p0

    :catchall_2d
    move-exception p0

    goto :goto_34

    :catch_2f
    move-exception p0

    .line 36
    :try_start_30
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 37
    throw p0
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_2d

    .line 25
    :goto_34
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized createClient(Landroid/content/Context;)Lcom/google/android/libraries/places/api/net/PlacesClient;
    .registers 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/google/android/libraries/places/api/Places;

    monitor-enter v0

    :try_start_3
    const-string v1, "Context must not be null."

    .line 20
    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/dn;->a(Landroid/content/Context;)Lcom/google/android/libraries/places/internal/dn$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/dn$a;->b()Lcom/google/android/libraries/places/internal/dn;

    move-result-object v1

    .line 22
    invoke-static {p0, v1}, Lcom/google/android/libraries/places/api/Places;->a(Landroid/content/Context;Lcom/google/android/libraries/places/internal/dn;)Lcom/google/android/libraries/places/api/net/PlacesClient;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_14} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_14} :catch_18
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    goto :goto_1d

    :catch_18
    move-exception p0

    .line 24
    :try_start_19
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 25
    throw p0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_16

    .line 19
    :goto_1d
    monitor-exit v0

    throw p0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/google/android/libraries/places/api/Places;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception p0

    .line 5
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 6
    throw p0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Ljava/util/Locale;)V
    .registers 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-class v0, Lcom/google/android/libraries/places/api/Places;

    monitor-enter v0

    :try_start_3
    const-string v1, "API Key must not be null."

    .line 7
    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "API Key must not be empty."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/do;->a(Landroid/content/Context;)V

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string v1, "Must provide non-empty API key."

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 11
    sget-object p0, Lcom/google/android/libraries/places/api/Places;->a:Lcom/google/android/libraries/places/internal/au;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/au;->a(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_2a
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_2a} :catch_2e
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_2a} :catch_2e
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2c

    .line 12
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    goto :goto_33

    :catch_2e
    move-exception p0

    .line 14
    :try_start_2f
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 15
    throw p0
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_2c

    .line 6
    :goto_33
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isInitialized()Z
    .registers 2

    const-class v0, Lcom/google/android/libraries/places/api/Places;

    monitor-enter v0

    .line 16
    :try_start_3
    sget-object v1, Lcom/google/android/libraries/places/api/Places;->a:Lcom/google/android/libraries/places/internal/au;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/au;->a()Z

    move-result v1
    :try_end_9
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_9} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_9} :catch_d
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    goto :goto_12

    :catch_d
    move-exception v1

    .line 18
    :try_start_e
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 19
    throw v1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_b

    .line 15
    :goto_12
    monitor-exit v0

    throw v1
.end method
