.class Lcom/annimon/stream/RandomCompat$5;
.super Ljava/lang/Object;
.source "RandomCompat.java"

# interfaces
.implements Lcom/annimon/stream/function/LongSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/RandomCompat;->longs(JJ)Lcom/annimon/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final bound:J

.field private final boundMinus1:J

.field final synthetic this$0:Lcom/annimon/stream/RandomCompat;

.field final synthetic val$randomNumberBound:J

.field final synthetic val$randomNumberOrigin:J


# direct methods
.method constructor <init>(Lcom/annimon/stream/RandomCompat;JJ)V
    .registers 8

    .line 284
    iput-object p1, p0, Lcom/annimon/stream/RandomCompat$5;->this$0:Lcom/annimon/stream/RandomCompat;

    iput-wide p2, p0, Lcom/annimon/stream/RandomCompat$5;->val$randomNumberBound:J

    iput-wide p4, p0, Lcom/annimon/stream/RandomCompat$5;->val$randomNumberOrigin:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iget-wide p1, p0, Lcom/annimon/stream/RandomCompat$5;->val$randomNumberBound:J

    iget-wide p3, p0, Lcom/annimon/stream/RandomCompat$5;->val$randomNumberOrigin:J

    sub-long v0, p1, p3

    iput-wide v0, p0, Lcom/annimon/stream/RandomCompat$5;->bound:J

    .line 287
    iget-wide p1, p0, Lcom/annimon/stream/RandomCompat$5;->bound:J

    const-wide/16 p3, 0x1

    sub-long v0, p1, p3

    iput-wide v0, p0, Lcom/annimon/stream/RandomCompat$5;->boundMinus1:J

    return-void
.end method


# virtual methods
.method public getAsLong()J
    .registers 10

    .line 291
    iget-object v0, p0, Lcom/annimon/stream/RandomCompat$5;->this$0:Lcom/annimon/stream/RandomCompat;

    invoke-static {v0}, Lcom/annimon/stream/RandomCompat;->access$000(Lcom/annimon/stream/RandomCompat;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    .line 292
    iget-wide v2, p0, Lcom/annimon/stream/RandomCompat$5;->bound:J

    iget-wide v4, p0, Lcom/annimon/stream/RandomCompat$5;->boundMinus1:J

    and-long v6, v2, v4

    const-wide/16 v2, 0x0

    cmp-long v4, v6, v2

    if-nez v4, :cond_1f

    .line 294
    iget-wide v2, p0, Lcom/annimon/stream/RandomCompat$5;->boundMinus1:J

    and-long v4, v0, v2

    iget-wide v0, p0, Lcom/annimon/stream/RandomCompat$5;->val$randomNumberOrigin:J

    add-long v2, v4, v0

    goto :goto_54

    .line 295
    :cond_1f
    iget-wide v4, p0, Lcom/annimon/stream/RandomCompat$5;->bound:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_46

    const/4 v4, 0x1

    ushr-long/2addr v0, v4

    .line 298
    :goto_27
    iget-wide v5, p0, Lcom/annimon/stream/RandomCompat$5;->boundMinus1:J

    add-long v7, v0, v5

    iget-wide v5, p0, Lcom/annimon/stream/RandomCompat$5;->bound:J

    rem-long/2addr v0, v5

    sub-long v5, v7, v0

    cmp-long v7, v5, v2

    if-gez v7, :cond_40

    .line 299
    iget-object v0, p0, Lcom/annimon/stream/RandomCompat$5;->this$0:Lcom/annimon/stream/RandomCompat;

    invoke-static {v0}, Lcom/annimon/stream/RandomCompat;->access$000(Lcom/annimon/stream/RandomCompat;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    ushr-long/2addr v0, v4

    goto :goto_27

    .line 301
    :cond_40
    iget-wide v2, p0, Lcom/annimon/stream/RandomCompat$5;->val$randomNumberOrigin:J

    add-long v4, v0, v2

    move-wide v2, v4

    goto :goto_54

    :cond_46
    move-wide v2, v0

    .line 304
    :goto_47
    iget-wide v0, p0, Lcom/annimon/stream/RandomCompat$5;->val$randomNumberOrigin:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_55

    iget-wide v0, p0, Lcom/annimon/stream/RandomCompat$5;->val$randomNumberBound:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_54

    goto :goto_55

    :cond_54
    :goto_54
    return-wide v2

    .line 305
    :cond_55
    :goto_55
    iget-object v0, p0, Lcom/annimon/stream/RandomCompat$5;->this$0:Lcom/annimon/stream/RandomCompat;

    invoke-static {v0}, Lcom/annimon/stream/RandomCompat;->access$000(Lcom/annimon/stream/RandomCompat;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    goto :goto_47
.end method
