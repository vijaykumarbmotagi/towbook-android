.class public final Lcom/google/android/libraries/places/internal/be;
.super Lcom/google/android/libraries/places/api/model/LocalTime$a;
.source "PG"


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/LocalTime$a;-><init>()V

    return-void
.end method


# virtual methods
.method final a(I)Lcom/google/android/libraries/places/api/model/LocalTime$a;
    .registers 2

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/be;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method final a()Lcom/google/android/libraries/places/api/model/LocalTime;
    .registers 5

    const-string v0, ""

    .line 8
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/be;->a:Ljava/lang/Integer;

    if-nez v1, :cond_10

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " hours"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    :cond_10
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/be;->b:Ljava/lang/Integer;

    if-nez v1, :cond_1e

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " minutes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    .line 13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_37

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :cond_37
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3c
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_40
    new-instance v0, Lcom/google/android/libraries/places/internal/bz;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/be;->a:Ljava/lang/Integer;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/be;->b:Ljava/lang/Integer;

    .line 16
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/bz;-><init>(II)V

    return-object v0
.end method

.method final b(I)Lcom/google/android/libraries/places/api/model/LocalTime$a;
    .registers 2

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/be;->b:Ljava/lang/Integer;

    return-object p0
.end method
