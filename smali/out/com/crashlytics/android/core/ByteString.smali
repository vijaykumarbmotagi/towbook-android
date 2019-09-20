.class final Lcom/crashlytics/android/core/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/ByteString$CodedBuilder;,
        Lcom/crashlytics/android/core/ByteString$Output;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/crashlytics/android/core/ByteString;


# instance fields
.field private final bytes:[B

.field private volatile hash:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 85
    new-instance v0, Lcom/crashlytics/android/core/ByteString;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V

    sput-object v0, Lcom/crashlytics/android/core/ByteString;->EMPTY:Lcom/crashlytics/android/core/ByteString;

    return-void
.end method

.method private constructor <init>([B)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 279
    iput v0, p0, Lcom/crashlytics/android/core/ByteString;->hash:I

    .line 53
    iput-object p1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    return-void
.end method

.method synthetic constructor <init>([BLcom/crashlytics/android/core/ByteString$1;)V
    .registers 3

    .line 49
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V

    return-void
.end method

.method public static copyFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/crashlytics/android/core/ByteString;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V

    return-object v0
.end method

.method public static copyFrom(Ljava/nio/ByteBuffer;)Lcom/crashlytics/android/core/ByteString;
    .registers 2

    .line 119
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/core/ByteString;->copyFrom(Ljava/nio/ByteBuffer;I)Lcom/crashlytics/android/core/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static copyFrom(Ljava/nio/ByteBuffer;I)Lcom/crashlytics/android/core/ByteString;
    .registers 2

    .line 109
    new-array p1, p1, [B

    .line 110
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 111
    new-instance p0, Lcom/crashlytics/android/core/ByteString;

    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V

    return-object p0
.end method

.method public static copyFrom(Ljava/util/List;)Lcom/crashlytics/android/core/ByteString;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/crashlytics/android/core/ByteString;",
            ">;)",
            "Lcom/crashlytics/android/core/ByteString;"
        }
    .end annotation

    .line 152
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 153
    sget-object p0, Lcom/crashlytics/android/core/ByteString;->EMPTY:Lcom/crashlytics/android/core/ByteString;

    return-object p0

    .line 154
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_18

    .line 155
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/crashlytics/android/core/ByteString;

    return-object p0

    .line 159
    :cond_18
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/crashlytics/android/core/ByteString;

    .line 160
    invoke-virtual {v3}, Lcom/crashlytics/android/core/ByteString;->size()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1d

    .line 162
    :cond_2f
    new-array v0, v1, [B

    .line 164
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/crashlytics/android/core/ByteString;

    .line 165
    iget-object v4, v3, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    invoke-virtual {v3}, Lcom/crashlytics/android/core/ByteString;->size()I

    move-result v5

    invoke-static {v4, v2, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    invoke-virtual {v3}, Lcom/crashlytics/android/core/ByteString;->size()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_36

    .line 168
    :cond_51
    new-instance p0, Lcom/crashlytics/android/core/ByteString;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V

    return-object p0
.end method

.method public static copyFrom([B)Lcom/crashlytics/android/core/ByteString;
    .registers 3

    .line 101
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/crashlytics/android/core/ByteString;->copyFrom([BII)Lcom/crashlytics/android/core/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static copyFrom([BII)Lcom/crashlytics/android/core/ByteString;
    .registers 5

    .line 92
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 93
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    new-instance p0, Lcom/crashlytics/android/core/ByteString;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V

    return-object p0
.end method

.method public static copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;
    .registers 3

    .line 137
    :try_start_0
    new-instance v0, Lcom/crashlytics/android/core/ByteString;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception p0

    .line 139
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static newCodedBuilder(I)Lcom/crashlytics/android/core/ByteString$CodedBuilder;
    .registers 3

    .line 368
    new-instance v0, Lcom/crashlytics/android/core/ByteString$CodedBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/crashlytics/android/core/ByteString$CodedBuilder;-><init>(ILcom/crashlytics/android/core/ByteString$1;)V

    return-object v0
.end method

.method public static newOutput()Lcom/crashlytics/android/core/ByteString$Output;
    .registers 1

    const/16 v0, 0x20

    .line 327
    invoke-static {v0}, Lcom/crashlytics/android/core/ByteString;->newOutput(I)Lcom/crashlytics/android/core/ByteString$Output;

    move-result-object v0

    return-object v0
.end method

.method public static newOutput(I)Lcom/crashlytics/android/core/ByteString$Output;
    .registers 3

    .line 320
    new-instance v0, Lcom/crashlytics/android/core/ByteString$Output;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lcom/crashlytics/android/core/ByteString$Output;-><init>(Ljava/io/ByteArrayOutputStream;Lcom/crashlytics/android/core/ByteString$1;)V

    return-object v0
.end method


# virtual methods
.method public asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public byteAt(I)B
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public copyTo(Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 207
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    iget-object v1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public copyTo([BI)V
    .registers 6

    .line 181
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    iget-object v1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public copyTo([BIII)V
    .registers 6

    .line 195
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 258
    :cond_4
    instance-of v1, p1, Lcom/crashlytics/android/core/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 262
    :cond_a
    check-cast p1, Lcom/crashlytics/android/core/ByteString;

    .line 263
    iget-object v1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v1, v1

    .line 264
    iget-object v3, p1, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v3, v3

    if-eq v1, v3, :cond_15

    return v2

    .line 268
    :cond_15
    iget-object v3, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    .line 269
    iget-object p1, p1, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v1, :cond_26

    .line 271
    aget-byte v5, v3, v4

    aget-byte v6, p1, v4

    if-eq v5, v6, :cond_23

    return v2

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_26
    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 283
    iget v0, p0, Lcom/crashlytics/android/core/ByteString;->hash:I

    if-nez v0, :cond_1c

    .line 286
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    .line 287
    iget-object v1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v1

    :goto_b
    if-ge v2, v1, :cond_15

    mul-int/lit8 v3, v3, 0x1f

    .line 291
    aget-byte v4, v0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    if-nez v3, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    move v0, v3

    .line 297
    :goto_1a
    iput v0, p0, Lcom/crashlytics/android/core/ByteString;->hash:I

    :cond_1c
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public newInput()Ljava/io/InputStream;
    .registers 3

    .line 310
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public toByteArray()[B
    .registers 5

    .line 214
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v0, v0

    .line 215
    new-array v1, v0, [B

    .line 216
    iget-object v2, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public toStringUtf8()Ljava/lang/String;
    .registers 4

    .line 243
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    .line 245
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
