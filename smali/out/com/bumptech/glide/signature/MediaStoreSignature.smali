.class public Lcom/bumptech/glide/signature/MediaStoreSignature;
.super Ljava/lang/Object;
.source "MediaStoreSignature.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private final dateModified:J

.field private final mimeType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final orientation:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JI)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    const-string p1, ""

    .line 31
    :cond_7
    iput-object p1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    .line 32
    iput-wide p2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    .line 33
    iput p4, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 46
    :cond_12
    check-cast p1, Lcom/bumptech/glide/signature/MediaStoreSignature;

    .line 48
    iget-wide v2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    iget-wide v4, p1, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1d

    return v1

    .line 51
    :cond_1d
    iget v2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    iget v3, p1, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    if-eq v2, v3, :cond_24

    return v1

    .line 54
    :cond_24
    iget-object v2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    iget-object p1, p1, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    return v1

    :cond_2f
    return v0

    :cond_30
    :goto_30
    return v1
.end method

.method public hashCode()I
    .registers 8

    .line 62
    iget-object v0, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget-wide v1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    iget-wide v3, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long v5, v1, v3

    long-to-int v1, v5

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 64
    iget v1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    add-int/2addr v0, v1

    return v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 5
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0xc

    .line 70
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    sget-object v1, Lcom/bumptech/glide/signature/MediaStoreSignature;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
