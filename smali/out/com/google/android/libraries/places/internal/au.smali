.class public final Lcom/google/android/libraries/places/internal/au;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/av;
.implements Lcom/google/android/libraries/places/internal/dq;


# instance fields
.field private volatile a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private volatile b:Ljava/util/Locale;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 5
    .param p2    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_1
    const-string v0, "API Key must not be null."

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "API Key must not be empty."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/au;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/au;->b:Ljava/util/Locale;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 6
    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    .line 1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()Z
    .registers 2

    monitor-enter p0

    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/au;->a:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 8
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/au;->a()Z

    move-result v0

    const-string v1, "ApiConfig must be initialized."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/au;->a:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    .line 7
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Ljava/util/Locale;
    .registers 3

    monitor-enter p0

    .line 10
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/au;->a()Z

    move-result v0

    const-string v1, "ApiConfig must be initialized."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/au;->b:Ljava/util/Locale;

    if-nez v0, :cond_14

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_18

    monitor-exit p0

    return-object v0

    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/au;->b:Ljava/util/Locale;
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    :catchall_18
    move-exception v0

    .line 9
    monitor-exit p0

    throw v0
.end method
