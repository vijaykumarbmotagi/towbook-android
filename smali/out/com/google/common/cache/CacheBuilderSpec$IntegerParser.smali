.class abstract Lcom/google/common/cache/CacheBuilderSpec$IntegerParser;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"

# interfaces
.implements Lcom/google/common/cache/CacheBuilderSpec$ValueParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "IntegerParser"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_c

    .line 293
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    const-string v3, "value of key %s omitted"

    invoke-static {v2, v3, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 295
    :try_start_12
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/google/common/cache/CacheBuilderSpec$IntegerParser;->parseInteger(Lcom/google/common/cache/CacheBuilderSpec;I)V
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception p1

    .line 297
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "key %s value set to %s, must be integer"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    aput-object p3, v4, v1

    .line 298
    invoke-static {v3, v4}, Lcom/google/common/cache/CacheBuilderSpec;->access$000(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected abstract parseInteger(Lcom/google/common/cache/CacheBuilderSpec;I)V
.end method
