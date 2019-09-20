.class public final Lcom/google/android/libraries/places/internal/il;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    .line 24
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/il;->a:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    .line 25
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    .line 26
    new-array v0, v0, [B

    .line 27
    sput-object v0, Lcom/google/android/libraries/places/internal/il;->b:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 28
    sget-object v0, Lcom/google/android/libraries/places/internal/il;->b:[B

    .line 29
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/kq;->a([B)Lcom/google/android/libraries/places/internal/kq;

    return-void
.end method

.method static a(I[BII)I
    .registers 6

    move v0, p0

    move p0, p2

    :goto_2
    add-int v1, p2, p3

    if-ge p0, v1, :cond_e

    mul-int/lit8 v0, v0, 0x1f

    .line 18
    aget-byte v1, p1, p0

    add-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_e
    return v0
.end method

.method public static a(J)I
    .registers 6

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long v2, p0, v0

    long-to-int p0, v2

    return p0
.end method

.method public static a(Z)I
    .registers 1

    if-eqz p0, :cond_5

    const/16 p0, 0x4cf

    return p0

    :cond_5
    const/16 p0, 0x4d5

    return p0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_8

    .line 2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    :cond_8
    return-object p0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 23
    check-cast p0, Lcom/google/android/libraries/places/internal/jo;

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/jo;->i()Lcom/google/android/libraries/places/internal/jp;

    move-result-object p0

    check-cast p1, Lcom/google/android/libraries/places/internal/jo;

    invoke-interface {p0, p1}, Lcom/google/android/libraries/places/internal/jp;->a(Lcom/google/android/libraries/places/internal/jo;)Lcom/google/android/libraries/places/internal/jp;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/jp;->c()Lcom/google/android/libraries/places/internal/jo;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_8

    .line 5
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    return-object p0
.end method

.method static a(Lcom/google/android/libraries/places/internal/jo;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static a([B)Z
    .registers 4

    .line 8
    sget-object v0, Lcom/google/android/libraries/places/internal/la;->a:Lcom/google/android/libraries/places/internal/lb;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/google/android/libraries/places/internal/lb;->a([BII)Z

    move-result p0

    return p0
.end method

.method public static b([B)Ljava/lang/String;
    .registers 3

    .line 10
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/libraries/places/internal/il;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static c([B)I
    .registers 3

    .line 13
    array-length v0, p0

    const/4 v1, 0x0

    .line 14
    invoke-static {v0, p0, v1, v0}, Lcom/google/android/libraries/places/internal/il;->a(I[BII)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    return p0
.end method
