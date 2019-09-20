.class public Lcom/google/android/libraries/places/internal/kq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/jm;


# instance fields
.field public a:I

.field public final b:[B

.field public final c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 13
    iput v0, p0, Lcom/google/android/libraries/places/internal/kq;->a:I

    return-void
.end method

.method constructor <init>([BIIZ)V
    .registers 6

    .line 26
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/kq;-><init>()V

    const v0, 0x7fffffff

    .line 27
    iput v0, p0, Lcom/google/android/libraries/places/internal/kq;->h:I

    .line 28
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/kq;->b:[B

    add-int/2addr p3, p2

    .line 29
    iput p3, p0, Lcom/google/android/libraries/places/internal/kq;->d:I

    .line 30
    iput p2, p0, Lcom/google/android/libraries/places/internal/kq;->f:I

    .line 31
    iget p1, p0, Lcom/google/android/libraries/places/internal/kq;->f:I

    iput p1, p0, Lcom/google/android/libraries/places/internal/kq;->g:I

    .line 32
    iput-boolean p4, p0, Lcom/google/android/libraries/places/internal/kq;->c:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZB)V
    .registers 6

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/kq;-><init>([BIIZ)V

    return-void
.end method

.method public static a([B)Lcom/google/android/libraries/places/internal/kq;
    .registers 3

    .line 4
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/android/libraries/places/internal/kq;->a([BII)Lcom/google/android/libraries/places/internal/kq;

    move-result-object p0

    return-object p0
.end method

.method public static a([BII)Lcom/google/android/libraries/places/internal/kq;
    .registers 3

    const/4 p1, 0x0

    .line 5
    invoke-static {p0, p1, p2, p1}, Lcom/google/android/libraries/places/internal/kq;->a([BIIZ)Lcom/google/android/libraries/places/internal/kq;

    move-result-object p0

    return-object p0
.end method

.method static a([BIIZ)Lcom/google/android/libraries/places/internal/kq;
    .registers 11

    .line 6
    new-instance v6, Lcom/google/android/libraries/places/internal/kq;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/kq;-><init>([BIIZB)V

    .line 7
    :try_start_b
    invoke-virtual {v6, p2}, Lcom/google/android/libraries/places/internal/kq;->a(I)I
    :try_end_e
    .catch Lcom/google/android/libraries/places/internal/ir; {:try_start_b .. :try_end_e} :catch_f

    return-object v6

    :catch_f
    move-exception p0

    .line 10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public a(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/places/internal/ir;
        }
    .end annotation

    if-gez p1, :cond_7

    .line 16
    invoke-static {}, Lcom/google/android/libraries/places/internal/ir;->b()Lcom/google/android/libraries/places/internal/ir;

    move-result-object p1

    throw p1

    .line 17
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kq;->d()I

    move-result v0

    add-int/2addr p1, v0

    .line 18
    iget v0, p0, Lcom/google/android/libraries/places/internal/kq;->h:I

    if-le p1, v0, :cond_15

    .line 20
    invoke-static {}, Lcom/google/android/libraries/places/internal/ir;->a()Lcom/google/android/libraries/places/internal/ir;

    move-result-object p1

    throw p1

    .line 21
    :cond_15
    iput p1, p0, Lcom/google/android/libraries/places/internal/kq;->h:I

    .line 22
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kq;->e()V

    return v0
.end method

.method public final a()Lcom/google/android/libraries/places/internal/jz;
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public final b()Z
    .registers 2

    .line 2
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public final c()Lcom/google/android/libraries/places/internal/jo;
    .registers 2

    .line 3
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public d()I
    .registers 3

    .line 24
    iget v0, p0, Lcom/google/android/libraries/places/internal/kq;->f:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/kq;->g:I

    sub-int/2addr v0, v1

    return v0
.end method

.method e()V
    .registers 3

    .line 34
    iget v0, p0, Lcom/google/android/libraries/places/internal/kq;->d:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/kq;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/libraries/places/internal/kq;->d:I

    .line 35
    iget v0, p0, Lcom/google/android/libraries/places/internal/kq;->d:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/kq;->g:I

    sub-int/2addr v0, v1

    .line 36
    iget v1, p0, Lcom/google/android/libraries/places/internal/kq;->h:I

    if-le v0, v1, :cond_1d

    .line 37
    iget v1, p0, Lcom/google/android/libraries/places/internal/kq;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/libraries/places/internal/kq;->e:I

    .line 38
    iget v0, p0, Lcom/google/android/libraries/places/internal/kq;->d:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/kq;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/libraries/places/internal/kq;->d:I

    return-void

    :cond_1d
    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/google/android/libraries/places/internal/kq;->e:I

    return-void
.end method
