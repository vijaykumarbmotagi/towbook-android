.class Lcom/bumptech/glide/load/engine/DiskCacheStrategy$5;
.super Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
.source "DiskCacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 123
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeCachedData()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public decodeCachedResource()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isDataCacheable(Lcom/bumptech/glide/load/DataSource;)Z
    .registers 3

    .line 126
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->REMOTE:Lcom/bumptech/glide/load/DataSource;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public isResourceCacheable(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z
    .registers 4

    if-eqz p1, :cond_6

    .line 132
    sget-object p1, Lcom/bumptech/glide/load/DataSource;->DATA_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq p2, p1, :cond_a

    :cond_6
    sget-object p1, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    if-ne p2, p1, :cond_10

    :cond_a
    sget-object p1, Lcom/bumptech/glide/load/EncodeStrategy;->TRANSFORMED:Lcom/bumptech/glide/load/EncodeStrategy;

    if-ne p3, p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method
