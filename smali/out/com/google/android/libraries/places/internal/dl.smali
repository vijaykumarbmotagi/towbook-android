.class final Lcom/google/android/libraries/places/internal/dl;
.super Lcom/google/android/libraries/places/internal/dn$a;
.source "PG"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:Lcom/google/android/libraries/places/internal/dn$b;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/dn$a;-><init>()V

    return-void
.end method


# virtual methods
.method final a(I)Lcom/google/android/libraries/places/internal/dn$a;
    .registers 2

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/dl;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public final a(Lcom/google/android/libraries/places/internal/dn$b;)Lcom/google/android/libraries/places/internal/dn$a;
    .registers 3

    if-nez p1, :cond_a

    .line 10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null requestSource"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_a
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/dl;->c:Lcom/google/android/libraries/places/internal/dn$b;

    return-object p0
.end method

.method final a(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/dn$a;
    .registers 3

    if-nez p1, :cond_a

    .line 4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null packageName"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_a
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/dl;->a:Ljava/lang/String;

    return-object p0
.end method

.method final a()Lcom/google/android/libraries/places/internal/dn;
    .registers 5

    const-string v0, ""

    .line 14
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dl;->a:Ljava/lang/String;

    if-nez v1, :cond_10

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " packageName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    :cond_10
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dl;->b:Ljava/lang/Integer;

    if-nez v1, :cond_1e

    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " versionCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    :cond_1e
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dl;->c:Lcom/google/android/libraries/places/internal/dn$b;

    if-nez v1, :cond_2c

    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " requestSource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 21
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_45

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4a

    :cond_45
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4a
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_4e
    new-instance v0, Lcom/google/android/libraries/places/internal/dk;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dl;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/dl;->b:Ljava/lang/Integer;

    .line 23
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/dl;->c:Lcom/google/android/libraries/places/internal/dn$b;

    .line 24
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/dk;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/dn$b;)V

    return-object v0
.end method
