.class final Lcom/google/android/libraries/places/internal/hu;
.super Lcom/google/android/libraries/places/internal/hx;
.source "PG"


# static fields
.field public static final serialVersionUID:J = 0x1L


# instance fields
.field private final d:I

.field private final e:I


# direct methods
.method constructor <init>([BII)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/hx;-><init>([B)V

    add-int v0, p2, p3

    .line 2
    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/google/android/libraries/places/internal/hu;->b(III)I

    .line 3
    iput p2, p0, Lcom/google/android/libraries/places/internal/hu;->d:I

    .line 4
    iput p3, p0, Lcom/google/android/libraries/places/internal/hu;->e:I

    return-void
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "BoundedByteStream instances are not to be serialized directly"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(I)B
    .registers 6

    .line 6
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int v1, v0, v1

    or-int/2addr v1, p1

    if-gez v1, :cond_47

    if-gez p1, :cond_26

    .line 9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Index < 0: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_26
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index > length: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_47
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hu;->c:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/hu;->d:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public final a()I
    .registers 2

    .line 13
    iget v0, p0, Lcom/google/android/libraries/places/internal/hu;->e:I

    return v0
.end method

.method protected final a([BIII)V
    .registers 6

    .line 15
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/hu;->c:[B

    .line 16
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hx;->e()I

    move-result p3

    const/4 v0, 0x0

    .line 17
    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method final b(I)B
    .registers 4

    .line 12
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hu;->c:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/hu;->d:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method protected final e()I
    .registers 2

    .line 14
    iget v0, p0, Lcom/google/android/libraries/places/internal/hu;->d:I

    return v0
.end method

.method final writeReplace()Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hq;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/hq;->a([B)Lcom/google/android/libraries/places/internal/hq;

    move-result-object v0

    return-object v0
.end method
