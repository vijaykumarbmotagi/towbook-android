.class final Lcom/google/android/libraries/places/internal/hs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/libraries/places/internal/hq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    .line 2
    check-cast p1, Lcom/google/android/libraries/places/internal/hq;

    check-cast p2, Lcom/google/android/libraries/places/internal/hq;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/hq;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/hw;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/hq;->iterator()Ljava/util/Iterator;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/hw;

    .line 5
    :cond_10
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/hw;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/hw;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 7
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/hw;->a()B

    move-result v2

    .line 8
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/hq;->a(B)I

    move-result v2

    .line 9
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/hw;->a()B

    move-result v3

    .line 10
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hq;->a(B)I

    move-result v3

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    if-eqz v2, :cond_10

    return v2

    .line 15
    :cond_33
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
