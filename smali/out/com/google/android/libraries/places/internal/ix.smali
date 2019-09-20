.class public Lcom/google/android/libraries/places/internal/ix;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lcom/google/android/libraries/places/internal/hq;

.field public volatile b:Lcom/google/android/libraries/places/internal/jo;

.field public volatile c:Lcom/google/android/libraries/places/internal/hq;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 40
    invoke-static {}, Lcom/google/android/libraries/places/internal/ia;->a()Lcom/google/android/libraries/places/internal/ia;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/places/internal/jo;)Lcom/google/android/libraries/places/internal/jo;
    .registers 3

    .line 18
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ix;->b:Lcom/google/android/libraries/places/internal/jo;

    if-nez v0, :cond_1d

    .line 19
    monitor-enter p0

    .line 20
    :try_start_5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ix;->b:Lcom/google/android/libraries/places/internal/jo;

    if-eqz v0, :cond_b

    .line 21
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1a

    goto :goto_1d

    .line 22
    :cond_b
    :try_start_b
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ix;->b:Lcom/google/android/libraries/places/internal/jo;

    .line 23
    sget-object v0, Lcom/google/android/libraries/places/internal/hq;->a:Lcom/google/android/libraries/places/internal/hq;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/ix;->c:Lcom/google/android/libraries/places/internal/hq;
    :try_end_11
    .catch Lcom/google/android/libraries/places/internal/ir; {:try_start_b .. :try_end_11} :catch_12
    .catchall {:try_start_b .. :try_end_11} :catchall_1a

    goto :goto_18

    .line 26
    :catch_12
    :try_start_12
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ix;->b:Lcom/google/android/libraries/places/internal/jo;

    .line 27
    sget-object p1, Lcom/google/android/libraries/places/internal/hq;->a:Lcom/google/android/libraries/places/internal/hq;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ix;->c:Lcom/google/android/libraries/places/internal/hq;

    .line 28
    :goto_18
    monitor-exit p0

    goto :goto_1d

    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw p1

    .line 29
    :cond_1d
    :goto_1d
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ix;->b:Lcom/google/android/libraries/places/internal/jo;

    return-object p1
.end method

.method public final b()Lcom/google/android/libraries/places/internal/hq;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ix;->c:Lcom/google/android/libraries/places/internal/hq;

    if-eqz v0, :cond_7

    .line 31
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ix;->c:Lcom/google/android/libraries/places/internal/hq;

    return-object v0

    .line 32
    :cond_7
    monitor-enter p0

    .line 33
    :try_start_8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ix;->c:Lcom/google/android/libraries/places/internal/hq;

    if-eqz v0, :cond_10

    .line 34
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ix;->c:Lcom/google/android/libraries/places/internal/hq;

    monitor-exit p0

    return-object v0

    .line 35
    :cond_10
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ix;->b:Lcom/google/android/libraries/places/internal/jo;

    if-nez v0, :cond_19

    .line 36
    sget-object v0, Lcom/google/android/libraries/places/internal/hq;->a:Lcom/google/android/libraries/places/internal/hq;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/ix;->c:Lcom/google/android/libraries/places/internal/hq;

    goto :goto_21

    .line 37
    :cond_19
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ix;->b:Lcom/google/android/libraries/places/internal/jo;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/jo;->b()Lcom/google/android/libraries/places/internal/hq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/ix;->c:Lcom/google/android/libraries/places/internal/hq;

    .line 38
    :goto_21
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ix;->c:Lcom/google/android/libraries/places/internal/hq;

    monitor-exit p0

    return-object v0

    :catchall_25
    move-exception v0

    .line 39
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_4
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/ix;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_a
    check-cast p1, Lcom/google/android/libraries/places/internal/ix;

    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ix;->b:Lcom/google/android/libraries/places/internal/jo;

    .line 8
    iget-object v1, p1, Lcom/google/android/libraries/places/internal/ix;->b:Lcom/google/android/libraries/places/internal/jo;

    if-nez v0, :cond_21

    if-nez v1, :cond_21

    .line 10
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ix;->b()Lcom/google/android/libraries/places/internal/hq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ix;->b()Lcom/google/android/libraries/places/internal/hq;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/hq;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_21
    if-eqz v0, :cond_2a

    if-eqz v1, :cond_2a

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2a
    if-eqz v0, :cond_39

    .line 14
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/jo;->k()Lcom/google/android/libraries/places/internal/jo;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/places/internal/ix;->a(Lcom/google/android/libraries/places/internal/jo;)Lcom/google/android/libraries/places/internal/jo;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 15
    :cond_39
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/jo;->k()Lcom/google/android/libraries/places/internal/jo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/ix;->a(Lcom/google/android/libraries/places/internal/jo;)Lcom/google/android/libraries/places/internal/jo;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
