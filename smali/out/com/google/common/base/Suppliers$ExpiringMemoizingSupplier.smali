.class Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;
.super Ljava/lang/Object;
.source "Suppliers.java"

# interfaces
.implements Lcom/google/common/base/Supplier;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Suppliers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExpiringMemoizingSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field final durationNanos:J

.field volatile transient expirationNanos:J

.field volatile transient value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/base/Supplier;JLjava/util/concurrent/TimeUnit;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Supplier;

    iput-object p1, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    .line 218
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->durationNanos:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 219
    :goto_1a
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 230
    iget-wide v0, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->expirationNanos:J

    .line 231
    invoke-static {}, Lcom/google/common/base/Platform;->systemNanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_12

    sub-long v6, v2, v0

    cmp-long v8, v6, v4

    if-ltz v8, :cond_31

    .line 233
    :cond_12
    monitor-enter p0

    .line 234
    :try_start_13
    iget-wide v6, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->expirationNanos:J

    cmp-long v8, v0, v6

    if-nez v8, :cond_30

    .line 235
    iget-object v0, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 236
    iput-object v0, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->value:Ljava/lang/Object;

    .line 237
    iget-wide v6, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->durationNanos:J

    const/4 v1, 0x0

    add-long v8, v2, v6

    cmp-long v1, v8, v4

    if-nez v1, :cond_2c

    const-wide/16 v8, 0x1

    .line 240
    :cond_2c
    iput-wide v8, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->expirationNanos:J

    .line 241
    monitor-exit p0

    return-object v0

    .line 243
    :cond_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_13 .. :try_end_31} :catchall_34

    .line 245
    :cond_31
    iget-object v0, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->value:Ljava/lang/Object;

    return-object v0

    :catchall_34
    move-exception v0

    .line 243
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suppliers.memoizeWithExpiration("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->durationNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", NANOS)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method