.class final Lcom/google/android/libraries/places/internal/hy$a;
.super Lcom/google/android/libraries/places/internal/hy;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/hy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final d:[B

.field private final e:I

.field private f:I


# direct methods
.method constructor <init>([BII)V
    .registers 8

    .line 2
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/hy;-><init>()V

    if-nez p1, :cond_d

    .line 4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    or-int v0, p2, p3

    .line 5
    array-length v1, p1

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-gez v0, :cond_3b

    .line 6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length p1, p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    .line 8
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3b
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    .line 10
    iput p2, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    .line 11
    iput v2, p0, Lcom/google/android/libraries/places/internal/hy$a;->e:I

    return-void
.end method

.method private final c([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget p1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    .line 129
    new-instance p2, Lcom/google/android/libraries/places/internal/hy$b;

    const-string v0, "Pos: %d, limit: %d, len: %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    .line 130
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/libraries/places/internal/hy$a;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/libraries/places/internal/hy$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final a(B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    aput-byte p1, v0, v1
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    .line 69
    new-instance v0, Lcom/google/android/libraries/places/internal/hy$b;

    const-string v1, "Pos: %d, limit: %d, len: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    .line 70
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Lcom/google/android/libraries/places/internal/hy$a;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/libraries/places/internal/hy$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_6

    .line 72
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    return-void

    :cond_6
    int-to-long v0, p1

    .line 73
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/places/internal/hy;->a(J)V

    return-void
.end method

.method public final a(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    return-void
.end method

.method public final a(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    .line 27
    invoke-virtual {p0, p2, p3}, Lcom/google/android/libraries/places/internal/hy;->a(J)V

    return-void
.end method

.method public final a(ILcom/google/android/libraries/places/internal/hq;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/hy;->a(Lcom/google/android/libraries/places/internal/hq;)V

    return-void
.end method

.method public final a(ILcom/google/android/libraries/places/internal/jo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 51
    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    const/4 v2, 0x2

    .line 52
    invoke-virtual {p0, v2, p1}, Lcom/google/android/libraries/places/internal/hy;->c(II)V

    .line 54
    invoke-virtual {p0, v0, v2}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/hy;->a(Lcom/google/android/libraries/places/internal/jo;)V

    const/4 p1, 0x4

    .line 56
    invoke-virtual {p0, v1, p1}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    return-void
.end method

.method final a(ILcom/google/android/libraries/places/internal/jo;Lcom/google/android/libraries/places/internal/kd;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    .line 48
    move-object p1, p2

    check-cast p1, Lcom/google/android/libraries/places/internal/hj;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/hj;->a(Lcom/google/android/libraries/places/internal/kd;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    .line 49
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/hy$a;->c:Lcom/google/android/libraries/places/internal/lh;

    invoke-interface {p3, p2, p1}, Lcom/google/android/libraries/places/internal/kd;->a(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/hy;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    int-to-byte p1, p2

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->a(B)V

    return-void
.end method

.method public final a(J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    sget-boolean v0, Lcom/google/android/libraries/places/internal/hy;->b:Z

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_3a

    .line 99
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hy;->h()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_3a

    :goto_11
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_26

    .line 101
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    int-to-long v1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/libraries/places/internal/ky;->a([BJB)V

    return-void

    .line 103
    :cond_26
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v6, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Lcom/google/android/libraries/places/internal/ky;->a([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_11

    :cond_3a
    :goto_3a
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_4f

    .line 106
    :try_start_40
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    :catch_4d
    move-exception p1

    goto :goto_61

    .line 108
    :cond_4f
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v6, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6
    :try_end_5f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_40 .. :try_end_5f} :catch_4d

    ushr-long/2addr p1, v1

    goto :goto_3a

    .line 111
    :goto_61
    new-instance p2, Lcom/google/android/libraries/places/internal/hy$b;

    const-string v0, "Pos: %d, limit: %d, len: %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/libraries/places/internal/hy$a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/libraries/places/internal/hy$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final a(Lcom/google/android/libraries/places/internal/hq;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    .line 42
    invoke-virtual {p1, p0}, Lcom/google/android/libraries/places/internal/hq;->a(Lcom/google/android/libraries/places/internal/hp;)V

    return-void
.end method

.method public final a(Lcom/google/android/libraries/places/internal/jo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/jo;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    .line 64
    invoke-interface {p1, p0}, Lcom/google/android/libraries/places/internal/jo;->a(Lcom/google/android/libraries/places/internal/hy;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    .line 134
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 135
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/hy$a;->g(I)I

    move-result v1

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/hy$a;->g(I)I

    move-result v2

    if-ne v2, v1, :cond_31

    add-int v1, v0, v2

    .line 138
    iput v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    .line 139
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v3, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hy;->h()I

    move-result v4

    invoke-static {p1, v1, v3, v4}, Lcom/google/android/libraries/places/internal/la;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 140
    iput v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    .line 142
    invoke-virtual {p0, v3}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    .line 143
    iput v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    goto :goto_6e

    .line 145
    :cond_31
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/la;->a(Ljava/lang/CharSequence;)I

    move-result v1

    .line 146
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    .line 147
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v2, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hy;->h()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/libraries/places/internal/la;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I
    :try_end_46
    .catch Lcom/google/android/libraries/places/internal/ld; {:try_start_2 .. :try_end_46} :catch_4e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_46} :catch_47

    return-void

    :catch_47
    move-exception p1

    .line 162
    new-instance v0, Lcom/google/android/libraries/places/internal/hy$b;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/hy$b;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4e
    move-exception v1

    move-object v7, v1

    .line 150
    iput v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    .line 152
    sget-object v2, Lcom/google/android/libraries/places/internal/hy;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "com.google.protobuf.CodedOutputStream"

    const-string v5, "inefficientWriteStringNoTag"

    const-string v6, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    sget-object v0, Lcom/google/android/libraries/places/internal/il;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 154
    :try_start_65
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    const/4 v0, 0x0

    .line 155
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/libraries/places/internal/hp;->a([BII)V
    :try_end_6e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_65 .. :try_end_6e} :catch_71
    .catch Lcom/google/android/libraries/places/internal/hy$b; {:try_start_65 .. :try_end_6e} :catch_6f

    :goto_6e
    return-void

    :catch_6f
    move-exception p1

    .line 160
    throw p1

    :catch_71
    move-exception p1

    .line 158
    new-instance v0, Lcom/google/android/libraries/places/internal/hy$b;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/hy$b;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/hy$a;->c([BII)V

    return-void
.end method

.method public final b(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    sget-boolean v0, Lcom/google/android/libraries/places/internal/hy;->b:Z

    if-eqz v0, :cond_32

    .line 76
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hy;->h()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_32

    :goto_c
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_1e

    .line 78
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/libraries/places/internal/ky;->a([BJB)V

    return-void

    .line 80
    :cond_1e
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    int-to-long v1, v1

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->a([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_c

    :cond_32
    :goto_32
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_44

    .line 83
    :try_start_36
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    :catch_42
    move-exception p1

    goto :goto_56

    .line 85
    :cond_44
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_53
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_36 .. :try_end_53} :catch_42

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_32

    .line 88
    :goto_56
    new-instance v0, Lcom/google/android/libraries/places/internal/hy$b;

    const-string v1, "Pos: %d, limit: %d, len: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    .line 89
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Lcom/google/android/libraries/places/internal/hy$a;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/libraries/places/internal/hy$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/hy;->a(I)V

    return-void
.end method

.method public final b(ILcom/google/android/libraries/places/internal/hq;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 58
    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    const/4 v2, 0x2

    .line 59
    invoke-virtual {p0, v2, p1}, Lcom/google/android/libraries/places/internal/hy;->c(II)V

    .line 60
    invoke-virtual {p0, v0, p2}, Lcom/google/android/libraries/places/internal/hy;->a(ILcom/google/android/libraries/places/internal/hq;)V

    const/4 p1, 0x4

    .line 61
    invoke-virtual {p0, v1, p1}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    return-void
.end method

.method public final b([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p3}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    const/4 p2, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/hy$a;->c([BII)V

    return-void
.end method

.method public final c(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    .line 21
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    return-void
.end method

.method public final c(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    .line 30
    invoke-virtual {p0, p2, p3}, Lcom/google/android/libraries/places/internal/hy;->c(J)V

    return-void
.end method

.method public final c(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 114
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    const/16 v2, 0x8

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 115
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 116
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 117
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 118
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 119
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 120
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    const/16 v2, 0x38

    shr-long/2addr p1, v2

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1
    :try_end_7b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_7b} :catch_7c

    return-void

    :catch_7c
    move-exception p1

    .line 123
    new-instance p2, Lcom/google/android/libraries/places/internal/hy$b;

    const-string v0, "Pos: %d, limit: %d, len: %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    .line 124
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/libraries/places/internal/hy$a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/libraries/places/internal/hy$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final d(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 91
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 92
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 93
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v1
    :try_end_32
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_32} :catch_33

    return-void

    :catch_33
    move-exception p1

    .line 96
    new-instance v0, Lcom/google/android/libraries/places/internal/hy$b;

    const-string v1, "Pos: %d, limit: %d, len: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Lcom/google/android/libraries/places/internal/hy$a;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/libraries/places/internal/hy$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final e(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/hy;->d(I)V

    return-void
.end method

.method public final h()I
    .registers 3

    .line 164
    iget v0, p0, Lcom/google/android/libraries/places/internal/hy$a;->e:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/hy$a;->f:I

    sub-int/2addr v0, v1

    return v0
.end method
