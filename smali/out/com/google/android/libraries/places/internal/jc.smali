.class final Lcom/google/android/libraries/places/internal/jc;
.super Lcom/google/android/libraries/places/internal/ja;
.source "PG"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ja;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/Object;J)Lcom/google/android/libraries/places/internal/iq;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Lcom/google/android/libraries/places/internal/iq<",
            "TE;>;"
        }
    .end annotation

    .line 18
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/iq;

    return-object p0
.end method


# virtual methods
.method final a(Ljava/lang/Object;J)V
    .registers 4

    .line 4
    invoke-static {p1, p2, p3}, Lcom/google/android/libraries/places/internal/jc;->b(Ljava/lang/Object;J)Lcom/google/android/libraries/places/internal/iq;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/iq;->b()V

    return-void
.end method

.method final a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 7
    invoke-static {p1, p3, p4}, Lcom/google/android/libraries/places/internal/jc;->b(Ljava/lang/Object;J)Lcom/google/android/libraries/places/internal/iq;

    move-result-object v0

    .line 8
    invoke-static {p2, p3, p4}, Lcom/google/android/libraries/places/internal/jc;->b(Ljava/lang/Object;J)Lcom/google/android/libraries/places/internal/iq;

    move-result-object p2

    .line 9
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/iq;->size()I

    move-result v1

    .line 10
    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/iq;->size()I

    move-result v2

    if-lez v1, :cond_22

    if-lez v2, :cond_22

    .line 12
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/iq;->a()Z

    move-result v3

    if-nez v3, :cond_1f

    add-int/2addr v2, v1

    .line 13
    invoke-interface {v0, v2}, Lcom/google/android/libraries/places/internal/iq;->b(I)Lcom/google/android/libraries/places/internal/iq;

    move-result-object v0

    .line 14
    :cond_1f
    invoke-interface {v0, p2}, Lcom/google/android/libraries/places/internal/iq;->addAll(Ljava/util/Collection;)Z

    :cond_22
    if-lez v1, :cond_25

    move-object p2, v0

    .line 16
    :cond_25
    invoke-static {p1, p3, p4, p2}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
