.class Lcom/google/android/libraries/places/internal/hx;
.super Lcom/google/android/libraries/places/internal/hq;
.source "PG"


# static fields
.field public static final serialVersionUID:J = 0x1L


# instance fields
.field public final c:[B


# direct methods
.method constructor <init>([B)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/hq;-><init>(B)V

    if-nez p1, :cond_c

    .line 3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4
    :cond_c
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/hx;->c:[B

    return-void
.end method


# virtual methods
.method public a(I)B
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hx;->c:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public a()I
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hx;->c:[B

    array-length v0, v0

    return v0
.end method

.method protected final a(III)I
    .registers 5

    .line 58
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/hx;->c:[B

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hx;->e()I

    move-result v0

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/libraries/places/internal/il;->a(I[BII)I

    move-result p1

    return p1
.end method

.method public final a(II)Lcom/google/android/libraries/places/internal/hq;
    .registers 6

    .line 9
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/libraries/places/internal/hx;->b(III)I

    move-result p2

    if-nez p2, :cond_d

    .line 11
    sget-object p1, Lcom/google/android/libraries/places/internal/hq;->a:Lcom/google/android/libraries/places/internal/hq;

    return-object p1

    .line 12
    :cond_d
    new-instance v0, Lcom/google/android/libraries/places/internal/hu;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/hx;->c:[B

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hx;->e()I

    move-result v2

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p2}, Lcom/google/android/libraries/places/internal/hu;-><init>([BII)V

    return-object v0
.end method

.method protected final a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6

    .line 17
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/hx;->c:[B

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hx;->e()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final a(Lcom/google/android/libraries/places/internal/hp;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hx;->c:[B

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hx;->e()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/libraries/places/internal/hp;->a([BII)V

    return-void
.end method

.method protected a([BIII)V
    .registers 5

    .line 13
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/hx;->c:[B

    const/4 p3, 0x0

    invoke-static {p2, p3, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method final a(Lcom/google/android/libraries/places/internal/hq;II)Z
    .registers 9

    .line 40
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result p2

    if-le p3, p2, :cond_26

    .line 41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result p2

    const/16 v0, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Length too large: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    add-int/lit8 p2, p3, 0x0

    .line 42
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result v0

    if-le p2, v0, :cond_58

    .line 43
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 44
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result p1

    const/16 v0, 0x3b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Ran off end of other: 0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 45
    :cond_58
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/hx;

    const/4 v1, 0x0

    if-eqz v0, :cond_80

    .line 46
    check-cast p1, Lcom/google/android/libraries/places/internal/hx;

    .line 47
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/hx;->c:[B

    .line 48
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/hx;->c:[B

    .line 49
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hx;->e()I

    move-result v2

    add-int/2addr v2, p3

    .line 50
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hx;->e()I

    move-result p3

    .line 51
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/hx;->e()I

    move-result p1

    :goto_70
    if-ge p3, v2, :cond_7e

    .line 53
    aget-byte v3, p2, p3

    aget-byte v4, v0, p1

    if-eq v3, v4, :cond_79

    return v1

    :cond_79
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_70

    :cond_7e
    const/4 p1, 0x1

    return p1

    .line 57
    :cond_80
    invoke-virtual {p1, v1, p2}, Lcom/google/android/libraries/places/internal/hq;->a(II)Lcom/google/android/libraries/places/internal/hq;

    move-result-object p1

    invoke-virtual {p0, v1, p3}, Lcom/google/android/libraries/places/internal/hq;->a(II)Lcom/google/android/libraries/places/internal/hq;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/hq;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method b(I)B
    .registers 3

    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hx;->c:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final d()Z
    .registers 4

    .line 18
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hx;->e()I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/hx;->c:[B

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/android/libraries/places/internal/la;->a([BII)Z

    move-result v0

    return v0
.end method

.method protected e()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 22
    :cond_4
    instance-of v1, p1, Lcom/google/android/libraries/places/internal/hq;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 24
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/google/android/libraries/places/internal/hq;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result v3

    if-eq v1, v3, :cond_18

    return v2

    .line 26
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result v1

    if-nez v1, :cond_1f

    return v0

    .line 28
    :cond_1f
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/hx;

    if-eqz v0, :cond_39

    .line 29
    check-cast p1, Lcom/google/android/libraries/places/internal/hx;

    .line 31
    iget v0, p0, Lcom/google/android/libraries/places/internal/hq;->b:I

    .line 34
    iget v1, p1, Lcom/google/android/libraries/places/internal/hq;->b:I

    if-eqz v0, :cond_30

    if-eqz v1, :cond_30

    if-eq v0, v1, :cond_30

    return v2

    .line 38
    :cond_30
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/libraries/places/internal/hq;->a(Lcom/google/android/libraries/places/internal/hq;II)Z

    move-result p1

    return p1

    .line 39
    :cond_39
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
