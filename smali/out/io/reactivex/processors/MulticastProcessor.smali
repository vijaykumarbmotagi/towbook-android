.class public final Lio/reactivex/processors/MulticastProcessor;
.super Lio/reactivex/processors/FlowableProcessor;
.source "MulticastProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/processors/FlowableProcessor<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lio/reactivex/annotations/BackpressureSupport;
    value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
.end annotation

.annotation runtime Lio/reactivex/annotations/SchedulerSupport;
    value = "none"
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

.field static final TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;


# instance fields
.field final bufferSize:I

.field consumed:I

.field volatile done:Z

.field volatile error:Ljava/lang/Throwable;

.field fusionMode:I

.field final limit:I

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile queue:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field final refcount:Z

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    .line 158
    new-array v1, v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    sput-object v1, Lio/reactivex/processors/MulticastProcessor;->EMPTY:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 161
    new-array v0, v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    sput-object v0, Lio/reactivex/processors/MulticastProcessor;->TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    return-void
.end method

.method constructor <init>(IZ)V
    .registers 4

    .line 224
    invoke-direct {p0}, Lio/reactivex/processors/FlowableProcessor;-><init>()V

    const-string v0, "bufferSize"

    .line 225
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    .line 226
    iput p1, p0, Lio/reactivex/processors/MulticastProcessor;->bufferSize:I

    shr-int/lit8 v0, p1, 0x2

    sub-int/2addr p1, v0

    .line 227
    iput p1, p0, Lio/reactivex/processors/MulticastProcessor;->limit:I

    .line 228
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/processors/MulticastProcessor;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 229
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/processors/MulticastProcessor;->EMPTY:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 230
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    .line 231
    iput-boolean p2, p0, Lio/reactivex/processors/MulticastProcessor;->refcount:Z

    .line 232
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static create()Lio/reactivex/processors/MulticastProcessor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/processors/MulticastProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 172
    new-instance v0, Lio/reactivex/processors/MulticastProcessor;

    invoke-static {}, Lio/reactivex/processors/MulticastProcessor;->bufferSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/processors/MulticastProcessor;-><init>(IZ)V

    return-object v0
.end method

.method public static create(I)Lio/reactivex/processors/MulticastProcessor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/processors/MulticastProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 198
    new-instance v0, Lio/reactivex/processors/MulticastProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/processors/MulticastProcessor;-><init>(IZ)V

    return-object v0
.end method

.method public static create(IZ)Lio/reactivex/processors/MulticastProcessor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IZ)",
            "Lio/reactivex/processors/MulticastProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 213
    new-instance v0, Lio/reactivex/processors/MulticastProcessor;

    invoke-direct {v0, p0, p1}, Lio/reactivex/processors/MulticastProcessor;-><init>(IZ)V

    return-object v0
.end method

.method public static create(Z)Lio/reactivex/processors/MulticastProcessor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lio/reactivex/processors/MulticastProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 186
    new-instance v0, Lio/reactivex/processors/MulticastProcessor;

    invoke-static {}, Lio/reactivex/processors/MulticastProcessor;->bufferSize()I

    move-result v1

    invoke-direct {v0, v1, p0}, Lio/reactivex/processors/MulticastProcessor;-><init>(IZ)V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<",
            "TT;>;)Z"
        }
    .end annotation

    .line 389
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 390
    sget-object v1, Lio/reactivex/processors/MulticastProcessor;->TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    return v2

    .line 393
    :cond_e
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 395
    new-array v3, v3, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 396
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    aput-object p1, v3, v1

    .line 398
    iget-object v1, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method drain()V
    .registers 24

    move-object/from16 v1, p0

    .line 450
    iget-object v2, v1, Lio/reactivex/processors/MulticastProcessor;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    if-eqz v2, :cond_b

    return-void

    .line 455
    :cond_b
    iget-object v2, v1, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 456
    iget v3, v1, Lio/reactivex/processors/MulticastProcessor;->consumed:I

    .line 457
    iget v4, v1, Lio/reactivex/processors/MulticastProcessor;->limit:I

    .line 458
    iget v5, v1, Lio/reactivex/processors/MulticastProcessor;->fusionMode:I

    move v7, v3

    const/4 v3, 0x1

    .line 463
    :goto_15
    iget-object v8, v1, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    if-eqz v8, :cond_150

    .line 466
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 467
    array-length v10, v9

    if-eqz v10, :cond_150

    .line 472
    array-length v10, v9

    const-wide/16 v11, -0x1

    move v15, v7

    move-wide v6, v11

    const/4 v14, 0x0

    :goto_28
    const-wide/16 v16, 0x0

    if-ge v14, v10, :cond_60

    aget-object v13, v9, v14

    .line 473
    invoke-virtual {v13}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->get()J

    move-result-wide v18

    cmp-long v20, v18, v16

    if-ltz v20, :cond_53

    cmp-long v16, v6, v11

    if-nez v16, :cond_45

    .line 476
    iget-wide v6, v13, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->emitted:J

    sub-long v16, v18, v6

    move/from16 v22, v3

    move/from16 v21, v4

    move-wide/from16 v6, v16

    goto :goto_57

    .line 478
    :cond_45
    iget-wide v11, v13, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->emitted:J

    move/from16 v22, v3

    move/from16 v21, v4

    sub-long v3, v18, v11

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    move-wide v6, v3

    goto :goto_57

    :cond_53
    move/from16 v22, v3

    move/from16 v21, v4

    :goto_57
    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v21

    move/from16 v3, v22

    const-wide/16 v11, -0x1

    goto :goto_28

    :cond_60
    move/from16 v22, v3

    move/from16 v21, v4

    :goto_64
    cmp-long v3, v6, v16

    if-lez v3, :cond_fd

    .line 484
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 486
    sget-object v4, Lio/reactivex/processors/MulticastProcessor;->TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    if-ne v3, v4, :cond_76

    .line 487
    invoke-interface {v8}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    return-void

    :cond_76
    if-eq v9, v3, :cond_7d

    move/from16 v4, v21

    const/4 v3, 0x1

    goto/16 :goto_114

    .line 495
    :cond_7d
    iget-boolean v3, v1, Lio/reactivex/processors/MulticastProcessor;->done:Z

    .line 500
    :try_start_7f
    invoke-interface {v8}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v4
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_83} :catch_84

    goto :goto_94

    :catch_84
    move-exception v0

    .line 502
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 503
    iget-object v3, v1, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    const/4 v4, 0x0

    .line 506
    iput-object v0, v1, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    const/4 v3, 0x1

    .line 507
    iput-boolean v3, v1, Lio/reactivex/processors/MulticastProcessor;->done:Z

    const/4 v3, 0x1

    :goto_94
    if-nez v4, :cond_98

    const/4 v10, 0x1

    goto :goto_99

    :cond_98
    const/4 v10, 0x0

    :goto_99
    if-eqz v3, :cond_ca

    if-eqz v10, :cond_ca

    .line 512
    iget-object v3, v1, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    if-eqz v3, :cond_b5

    .line 514
    sget-object v4, Lio/reactivex/processors/MulticastProcessor;->TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_ab
    if-ge v5, v4, :cond_c9

    aget-object v6, v2, v5

    .line 515
    invoke-virtual {v6, v3}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_ab

    .line 518
    :cond_b5
    sget-object v3, Lio/reactivex/processors/MulticastProcessor;->TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_bf
    if-ge v4, v3, :cond_c9

    aget-object v5, v2, v4

    .line 519
    invoke-virtual {v5}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->onComplete()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_bf

    :cond_c9
    return-void

    :cond_ca
    if-eqz v10, :cond_cd

    goto :goto_fd

    .line 529
    :cond_cd
    array-length v3, v9

    const/4 v10, 0x0

    :goto_cf
    if-ge v10, v3, :cond_d9

    aget-object v11, v9, v10

    .line 530
    invoke-virtual {v11, v4}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_cf

    :cond_d9
    const-wide/16 v3, 0x1

    sub-long v10, v6, v3

    const/4 v3, 0x1

    if-eq v5, v3, :cond_f6

    add-int/lit8 v13, v15, 0x1

    move/from16 v4, v21

    if-ne v13, v4, :cond_f4

    .line 538
    iget-object v6, v1, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/reactivestreams/Subscription;

    int-to-long v12, v4

    invoke-interface {v6, v12, v13}, Lorg/reactivestreams/Subscription;->request(J)V

    const/4 v15, 0x0

    goto :goto_f8

    :cond_f4
    move v15, v13

    goto :goto_f8

    :cond_f6
    move/from16 v4, v21

    :goto_f8
    move/from16 v21, v4

    move-wide v6, v10

    goto/16 :goto_64

    :cond_fd
    :goto_fd
    move/from16 v4, v21

    const/4 v3, 0x1

    cmp-long v10, v6, v16

    if-nez v10, :cond_154

    .line 544
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 546
    sget-object v7, Lio/reactivex/processors/MulticastProcessor;->TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    if-ne v6, v7, :cond_112

    .line 547
    invoke-interface {v8}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    return-void

    :cond_112
    if-eq v9, v6, :cond_119

    :goto_114
    move v7, v15

    move/from16 v3, v22

    goto/16 :goto_15

    .line 555
    :cond_119
    iget-boolean v6, v1, Lio/reactivex/processors/MulticastProcessor;->done:Z

    if-eqz v6, :cond_154

    invoke-interface {v8}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_154

    .line 556
    iget-object v3, v1, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    if-eqz v3, :cond_13b

    .line 558
    sget-object v4, Lio/reactivex/processors/MulticastProcessor;->TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_131
    if-ge v5, v4, :cond_14f

    aget-object v6, v2, v5

    .line 559
    invoke-virtual {v6, v3}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_131

    .line 562
    :cond_13b
    sget-object v3, Lio/reactivex/processors/MulticastProcessor;->TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_145
    if-ge v4, v3, :cond_14f

    aget-object v5, v2, v4

    .line 563
    invoke-virtual {v5}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->onComplete()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_145

    :cond_14f
    return-void

    :cond_150
    move/from16 v22, v3

    move v15, v7

    const/4 v3, 0x1

    :cond_154
    move v7, v15

    .line 572
    iget-object v6, v1, Lio/reactivex/processors/MulticastProcessor;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    move/from16 v8, v22

    neg-int v8, v8

    invoke-virtual {v6, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_161

    return-void

    :cond_161
    move v3, v6

    goto/16 :goto_15
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 2

    .line 362
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public hasComplete()Z
    .registers 2

    .line 357
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public hasSubscribers()Z
    .registers 2

    .line 347
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    array-length v0, v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public hasThrowable()Z
    .registers 2

    .line 352
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const-string v0, "offer called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 315
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 316
    iget v0, p0, Lio/reactivex/processors/MulticastProcessor;->fusionMode:I

    if-nez v0, :cond_20

    .line 317
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 318
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor;->drain()V

    const/4 p1, 0x1

    return p1

    :cond_20
    return v1
.end method

.method public onComplete()V
    .registers 4

    .line 339
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 340
    iput-boolean v1, p0, Lio/reactivex/processors/MulticastProcessor;->done:Z

    .line 341
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor;->drain()V

    :cond_f
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 327
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 329
    iput-object p1, p0, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    .line 330
    iput-boolean v1, p0, Lio/reactivex/processors/MulticastProcessor;->done:Z

    .line 331
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor;->drain()V

    goto :goto_1a

    .line 333
    :cond_17
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_1a
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 294
    :cond_9
    iget v0, p0, Lio/reactivex/processors/MulticastProcessor;->fusionMode:I

    if-nez v0, :cond_28

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 295
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    .line 297
    iget-object p1, p0, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 298
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    invoke-direct {p1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, p1}, Lio/reactivex/processors/MulticastProcessor;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 302
    :cond_28
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor;->drain()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 5

    .line 261
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 262
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    if-eqz v0, :cond_2f

    .line 264
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    const/4 v1, 0x3

    .line 266
    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    .line 268
    iput v1, p0, Lio/reactivex/processors/MulticastProcessor;->fusionMode:I

    .line 269
    iput-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 270
    iput-boolean v2, p0, Lio/reactivex/processors/MulticastProcessor;->done:Z

    .line 271
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor;->drain()V

    return-void

    :cond_21
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2f

    .line 275
    iput v1, p0, Lio/reactivex/processors/MulticastProcessor;->fusionMode:I

    .line 276
    iput-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 278
    iget v0, p0, Lio/reactivex/processors/MulticastProcessor;->bufferSize:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void

    .line 283
    :cond_2f
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/processors/MulticastProcessor;->bufferSize:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 285
    iget v0, p0, Lio/reactivex/processors/MulticastProcessor;->bufferSize:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_3e
    return-void
.end method

.method remove(Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/MulticastProcessor$MulticastSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 407
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 408
    array-length v1, v0

    if-nez v1, :cond_c

    return-void

    :cond_c
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v1, :cond_1a

    .line 415
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_17

    move v2, v4

    goto :goto_1a

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_1a
    :goto_1a
    if-gez v2, :cond_1d

    goto :goto_5a

    :cond_1d
    const/4 v4, 0x1

    if-ne v1, v4, :cond_44

    .line 426
    iget-boolean v1, p0, Lio/reactivex/processors/MulticastProcessor;->refcount:Z

    if-eqz v1, :cond_39

    .line 427
    iget-object v1, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/processors/MulticastProcessor;->TERMINATED:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object p1, p0, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 429
    iget-object p1, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_5a

    .line 433
    :cond_39
    iget-object v1, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/processors/MulticastProcessor;->EMPTY:[Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_5a

    :cond_44
    add-int/lit8 v5, v1, -0x1

    .line 438
    new-array v5, v5, [Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    .line 439
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 440
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 441
    iget-object v1, p0, Lio/reactivex/processors/MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_5a
    return-void
.end method

.method public start()V
    .registers 3

    .line 242
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/subscriptions/EmptySubscription;->INSTANCE:Lio/reactivex/internal/subscriptions/EmptySubscription;

    invoke-static {v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 243
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/processors/MulticastProcessor;->bufferSize:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    :cond_13
    return-void
.end method

.method public startUnbounded()V
    .registers 3

    .line 254
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/subscriptions/EmptySubscription;->INSTANCE:Lio/reactivex/internal/subscriptions/EmptySubscription;

    invoke-static {v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 255
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    iget v1, p0, Lio/reactivex/processors/MulticastProcessor;->bufferSize:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    :cond_13
    return-void
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 367
    new-instance v0, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;

    invoke-direct {v0, p1, p0}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/MulticastProcessor;)V

    .line 368
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 369
    invoke-virtual {p0, v0}, Lio/reactivex/processors/MulticastProcessor;->add(Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 370
    invoke-virtual {v0}, Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;->get()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p1, v1, v3

    if-nez p1, :cond_1c

    .line 371
    invoke-virtual {p0, v0}, Lio/reactivex/processors/MulticastProcessor;->remove(Lio/reactivex/processors/MulticastProcessor$MulticastSubscription;)V

    goto :goto_37

    .line 373
    :cond_1c
    invoke-virtual {p0}, Lio/reactivex/processors/MulticastProcessor;->drain()V

    goto :goto_37

    .line 376
    :cond_20
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lio/reactivex/processors/MulticastProcessor;->refcount:Z

    if-nez v0, :cond_34

    .line 377
    :cond_2c
    iget-object v0, p0, Lio/reactivex/processors/MulticastProcessor;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_34

    .line 379
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 383
    :cond_34
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :goto_37
    return-void
.end method
