.class public abstract Lcom/google/android/libraries/places/internal/hq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/libraries/places/internal/hq;

.field private static final c:Lcom/google/android/libraries/places/internal/hv;


# instance fields
.field public b:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Lcom/google/android/libraries/places/internal/hx;

    sget-object v1, Lcom/google/android/libraries/places/internal/il;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/hx;-><init>([B)V

    sput-object v0, Lcom/google/android/libraries/places/internal/hq;->a:Lcom/google/android/libraries/places/internal/hq;

    .line 40
    invoke-static {}, Lcom/google/android/libraries/places/internal/hn;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    new-instance v0, Lcom/google/android/libraries/places/internal/jw;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/jw;-><init>(B)V

    goto :goto_1b

    :cond_16
    new-instance v0, Lcom/google/android/libraries/places/internal/jh;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/jh;-><init>(B)V

    :goto_1b
    sput-object v0, Lcom/google/android/libraries/places/internal/hq;->c:Lcom/google/android/libraries/places/internal/hv;

    .line 41
    new-instance v0, Lcom/google/android/libraries/places/internal/hs;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/hs;-><init>()V

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/libraries/places/internal/hq;->b:I

    return-void
.end method

.method constructor <init>(B)V
    .registers 2

    .line 42
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/hq;-><init>()V

    return-void
.end method

.method static a(B)I
    .registers 1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/hq;
    .registers 3

    .line 6
    new-instance v0, Lcom/google/android/libraries/places/internal/hx;

    sget-object v1, Lcom/google/android/libraries/places/internal/il;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/hx;-><init>([B)V

    return-object v0
.end method

.method static a([B)Lcom/google/android/libraries/places/internal/hq;
    .registers 2

    .line 5
    new-instance v0, Lcom/google/android/libraries/places/internal/hx;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/hx;-><init>([B)V

    return-object v0
.end method

.method static b(III)I
    .registers 6

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_6e

    if-gez p0, :cond_2a

    .line 28
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const/16 p2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Beginning index: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    if-ge p1, p0, :cond_4d

    .line 30
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const/16 v0, 0x42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Beginning index larger than ending index: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 31
    :cond_4d
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const/16 v0, 0x25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "End index: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6e
    return v0
.end method

.method static c(I)Lcom/google/android/libraries/places/internal/ji;
    .registers 3

    .line 24
    new-instance v0, Lcom/google/android/libraries/places/internal/ji;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/places/internal/ji;-><init>(IB)V

    return-object v0
.end method


# virtual methods
.method public abstract a(I)B
.end method

.method public abstract a()I
.end method

.method protected abstract a(III)I
.end method

.method public abstract a(II)Lcom/google/android/libraries/places/internal/hq;
.end method

.method protected abstract a(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method abstract a(Lcom/google/android/libraries/places/internal/hp;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract a([BIII)V
.end method

.method abstract a(Lcom/google/android/libraries/places/internal/hq;II)Z
.end method

.method abstract b(I)B
.end method

.method public final b()[B
    .registers 4

    .line 7
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result v0

    if-nez v0, :cond_9

    .line 9
    sget-object v0, Lcom/google/android/libraries/places/internal/il;->b:[B

    return-object v0

    .line 10
    :cond_9
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 11
    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/google/android/libraries/places/internal/hq;->a([BIII)V

    return-object v1
.end method

.method public final c()Ljava/lang/String;
    .registers 3

    .line 13
    sget-object v0, Lcom/google/android/libraries/places/internal/il;->a:Ljava/nio/charset/Charset;

    .line 14
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result v1

    if-nez v1, :cond_b

    const-string v0, ""

    return-object v0

    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/hq;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Z
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .registers 3

    .line 16
    iget v0, p0, Lcom/google/android/libraries/places/internal/hq;->b:I

    if-nez v0, :cond_12

    .line 18
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result v0

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v0, v1, v0}, Lcom/google/android/libraries/places/internal/hq;->a(III)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 22
    :cond_10
    iput v0, p0, Lcom/google/android/libraries/places/internal/hq;->b:I

    :cond_12
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 37
    new-instance v0, Lcom/google/android/libraries/places/internal/hr;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/hr;-><init>(Lcom/google/android/libraries/places/internal/hq;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    const-string v0, "<ByteString@%s size=%d>"

    const/4 v1, 0x2

    .line 33
    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 35
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
