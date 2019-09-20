.class public final Landroidx/work/Constraints$Builder;
.super Ljava/lang/Object;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mContentUriTriggers:Landroidx/work/ContentUriTriggers;

.field mRequiredNetworkType:Landroidx/work/NetworkType;

.field mRequiresBatteryNotLow:Z

.field mRequiresCharging:Z

.field mRequiresDeviceIdle:Z

.field mRequiresStorageNotLow:Z

.field mTriggerContentMaxDelay:J

.field mTriggerContentUpdateDelay:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Landroidx/work/Constraints$Builder;->mRequiresCharging:Z

    .line 283
    iput-boolean v0, p0, Landroidx/work/Constraints$Builder;->mRequiresDeviceIdle:Z

    .line 284
    sget-object v1, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    iput-object v1, p0, Landroidx/work/Constraints$Builder;->mRequiredNetworkType:Landroidx/work/NetworkType;

    .line 285
    iput-boolean v0, p0, Landroidx/work/Constraints$Builder;->mRequiresBatteryNotLow:Z

    .line 286
    iput-boolean v0, p0, Landroidx/work/Constraints$Builder;->mRequiresStorageNotLow:Z

    const-wide/16 v0, -0x1

    .line 288
    iput-wide v0, p0, Landroidx/work/Constraints$Builder;->mTriggerContentUpdateDelay:J

    .line 289
    iput-wide v0, p0, Landroidx/work/Constraints$Builder;->mTriggerContentMaxDelay:J

    .line 290
    new-instance v0, Landroidx/work/ContentUriTriggers;

    invoke-direct {v0}, Landroidx/work/ContentUriTriggers;-><init>()V

    iput-object v0, p0, Landroidx/work/Constraints$Builder;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    return-void
.end method


# virtual methods
.method public addContentUriTrigger(Landroid/net/Uri;Z)Landroidx/work/Constraints$Builder;
    .registers 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .line 370
    iget-object v0, p0, Landroidx/work/Constraints$Builder;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    invoke-virtual {v0, p1, p2}, Landroidx/work/ContentUriTriggers;->add(Landroid/net/Uri;Z)V

    return-object p0
.end method

.method public build()Landroidx/work/Constraints;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 452
    new-instance v0, Landroidx/work/Constraints;

    invoke-direct {v0, p0}, Landroidx/work/Constraints;-><init>(Landroidx/work/Constraints$Builder;)V

    return-object v0
.end method

.method public setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;
    .registers 2
    .param p1    # Landroidx/work/NetworkType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 325
    iput-object p1, p0, Landroidx/work/Constraints$Builder;->mRequiredNetworkType:Landroidx/work/NetworkType;

    return-object p0
.end method

.method public setRequiresBatteryNotLow(Z)Landroidx/work/Constraints$Builder;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 338
    iput-boolean p1, p0, Landroidx/work/Constraints$Builder;->mRequiresBatteryNotLow:Z

    return-object p0
.end method

.method public setRequiresCharging(Z)Landroidx/work/Constraints$Builder;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 300
    iput-boolean p1, p0, Landroidx/work/Constraints$Builder;->mRequiresCharging:Z

    return-object p0
.end method

.method public setRequiresDeviceIdle(Z)Landroidx/work/Constraints$Builder;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 313
    iput-boolean p1, p0, Landroidx/work/Constraints$Builder;->mRequiresDeviceIdle:Z

    return-object p0
.end method

.method public setRequiresStorageNotLow(Z)Landroidx/work/Constraints$Builder;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 351
    iput-boolean p1, p0, Landroidx/work/Constraints$Builder;->mRequiresStorageNotLow:Z

    return-object p0
.end method

.method public setTriggerContentMaxDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/Constraints$Builder;
    .registers 4
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .line 426
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/work/Constraints$Builder;->mTriggerContentMaxDelay:J

    return-object p0
.end method

.method public setTriggerContentMaxDelay(Ljava/time/Duration;)Landroidx/work/Constraints$Builder;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 442
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/work/Constraints$Builder;->mTriggerContentMaxDelay:J

    return-object p0
.end method

.method public setTriggerContentUpdateDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/Constraints$Builder;
    .registers 4
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .line 390
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/work/Constraints$Builder;->mTriggerContentUpdateDelay:J

    return-object p0
.end method

.method public setTriggerContentUpdateDelay(Ljava/time/Duration;)Landroidx/work/Constraints$Builder;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 407
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/work/Constraints$Builder;->mTriggerContentUpdateDelay:J

    return-object p0
.end method
