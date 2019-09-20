.class Lcom/google/android/libraries/places/internal/kt;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(B)V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/kt;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/libraries/places/internal/ku;)I
    .registers 1

    .line 39
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ku;->a()I

    move-result p0

    return p0
.end method

.method static a(Lcom/google/android/libraries/places/internal/ku;Lcom/google/android/libraries/places/internal/ku;)Lcom/google/android/libraries/places/internal/ku;
    .registers 3

    .line 34
    sget-object v0, Lcom/google/android/libraries/places/internal/ku;->a:Lcom/google/android/libraries/places/internal/ku;

    .line 35
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/ku;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    .line 37
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/ku;->a(Lcom/google/android/libraries/places/internal/ku;Lcom/google/android/libraries/places/internal/ku;)Lcom/google/android/libraries/places/internal/ku;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/ku;)V
    .registers 2

    .line 30
    check-cast p0, Lcom/google/android/libraries/places/internal/ij;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ij;->r:Lcom/google/android/libraries/places/internal/ku;

    return-void
.end method

.method static b(Lcom/google/android/libraries/places/internal/ku;)I
    .registers 5

    .line 41
    iget v0, p0, Lcom/google/android/libraries/places/internal/ku;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    :goto_8
    iget v2, p0, Lcom/google/android/libraries/places/internal/ku;->b:I

    if-ge v0, v2, :cond_20

    .line 46
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ku;->c:[I

    aget v2, v2, v0

    ushr-int/lit8 v2, v2, 0x3

    .line 50
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ku;->d:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/libraries/places/internal/hq;

    .line 51
    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/hy;->d(ILcom/google/android/libraries/places/internal/hq;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 53
    :cond_20
    iput v1, p0, Lcom/google/android/libraries/places/internal/ku;->e:I

    return v1
.end method

.method static e(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/ku;
    .registers 1

    .line 32
    check-cast p0, Lcom/google/android/libraries/places/internal/ij;

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/ij;->r:Lcom/google/android/libraries/places/internal/ku;

    return-object p0
.end method


# virtual methods
.method synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kt;->e(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/ku;

    move-result-object p1

    return-object p1
.end method

.method synthetic a(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/libraries/places/internal/lh;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    check-cast p1, Lcom/google/android/libraries/places/internal/ku;

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/ku;->a(Lcom/google/android/libraries/places/internal/lh;)V

    return-void
.end method

.method bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .line 2
    check-cast p2, Lcom/google/android/libraries/places/internal/ku;

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/kt;->a(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/ku;)V

    return-void
.end method

.method synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation

    .line 26
    check-cast p1, Lcom/google/android/libraries/places/internal/ku;

    check-cast p2, Lcom/google/android/libraries/places/internal/ku;

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/kt;->a(Lcom/google/android/libraries/places/internal/ku;Lcom/google/android/libraries/places/internal/ku;)Lcom/google/android/libraries/places/internal/ku;

    move-result-object p1

    return-object p1
.end method

.method b(Ljava/lang/Object;)V
    .registers 3

    .line 4
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kt;->e(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/ku;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p1, Lcom/google/android/libraries/places/internal/ku;->f:Z

    return-void
.end method

.method synthetic b(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/libraries/places/internal/lh;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    check-cast p1, Lcom/google/android/libraries/places/internal/ku;

    .line 12
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/lh;->a()Lcom/google/android/libraries/places/internal/li;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/li;->b:Lcom/google/android/libraries/places/internal/li;

    if-ne v0, v1, :cond_21

    .line 13
    iget v0, p1, Lcom/google/android/libraries/places/internal/ku;->b:I

    add-int/lit8 v0, v0, -0x1

    :goto_e
    if-ltz v0, :cond_20

    .line 14
    iget-object v1, p1, Lcom/google/android/libraries/places/internal/ku;->c:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    .line 17
    iget-object v2, p1, Lcom/google/android/libraries/places/internal/ku;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p2, v1, v2}, Lcom/google/android/libraries/places/internal/lh;->a(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_20
    return-void

    :cond_21
    const/4 v0, 0x0

    .line 19
    :goto_22
    iget v1, p1, Lcom/google/android/libraries/places/internal/ku;->b:I

    if-ge v0, v1, :cond_36

    .line 20
    iget-object v1, p1, Lcom/google/android/libraries/places/internal/ku;->c:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    .line 23
    iget-object v2, p1, Lcom/google/android/libraries/places/internal/ku;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p2, v1, v2}, Lcom/google/android/libraries/places/internal/lh;->a(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_36
    return-void
.end method

.method synthetic c(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 27
    check-cast p1, Lcom/google/android/libraries/places/internal/ku;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kt;->b(Lcom/google/android/libraries/places/internal/ku;)I

    move-result p1

    return p1
.end method

.method synthetic d(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 28
    check-cast p1, Lcom/google/android/libraries/places/internal/ku;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kt;->a(Lcom/google/android/libraries/places/internal/ku;)I

    move-result p1

    return p1
.end method
