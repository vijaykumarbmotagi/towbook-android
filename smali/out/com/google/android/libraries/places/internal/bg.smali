.class public final Lcom/google/android/libraries/places/internal/bg;
.super Lcom/google/android/libraries/places/api/model/OpeningHours$a;
.source "PG"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Period;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/OpeningHours$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/OpeningHours$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Period;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/OpeningHours$a;"
        }
    .end annotation

    if-nez p1, :cond_a

    .line 4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null periods"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_a
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bg;->a:Ljava/util/List;

    return-object p0
.end method

.method public final a()Lcom/google/android/libraries/places/api/model/OpeningHours;
    .registers 5

    const-string v0, ""

    .line 12
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bg;->a:Ljava/util/List;

    if-nez v1, :cond_10

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " periods"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    :cond_10
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bg;->b:Ljava/util/List;

    if-nez v1, :cond_1e

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " weekdayText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    .line 17
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

    .line 18
    :cond_40
    new-instance v0, Lcom/google/android/libraries/places/internal/cb;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bg;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/bg;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/cb;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final b(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/OpeningHours$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/OpeningHours$a;"
        }
    .end annotation

    if-nez p1, :cond_a

    .line 8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null weekdayText"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_a
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bg;->b:Ljava/util/List;

    return-object p0
.end method
