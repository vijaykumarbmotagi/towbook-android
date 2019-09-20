.class public final Landroidx/work/Constraints;
.super Ljava/lang/Object;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Constraints$Builder;
    }
.end annotation


# static fields
.field public static final NONE:Landroidx/work/Constraints;


# instance fields
.field private mContentUriTriggers:Landroidx/work/ContentUriTriggers;
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "content_uri_triggers"
    .end annotation
.end field

.field private mRequiredNetworkType:Landroidx/work/NetworkType;
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "required_network_type"
    .end annotation
.end field

.field private mRequiresBatteryNotLow:Z
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "requires_battery_not_low"
    .end annotation
.end field

.field private mRequiresCharging:Z
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "requires_charging"
    .end annotation
.end field

.field private mRequiresDeviceIdle:Z
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "requires_device_idle"
    .end annotation
.end field

.field private mRequiresStorageNotLow:Z
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "requires_storage_not_low"
    .end annotation
.end field

.field private mTriggerContentUpdateDelay:J
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "trigger_content_update_delay"
    .end annotation
.end field

.field private mTriggerMaxContentDelay:J
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "trigger_max_content_delay"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Landroidx/work/Constraints$Builder;

    invoke-direct {v0}, Landroidx/work/Constraints$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v0

    sput-object v0, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    iput-object v0, p0, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    const-wide/16 v0, -0x1

    .line 63
    iput-wide v0, p0, Landroidx/work/Constraints;->mTriggerContentUpdateDelay:J

    .line 66
    iput-wide v0, p0, Landroidx/work/Constraints;->mTriggerMaxContentDelay:J

    .line 71
    new-instance v0, Landroidx/work/ContentUriTriggers;

    invoke-direct {v0}, Landroidx/work/ContentUriTriggers;-><init>()V

    iput-object v0, p0, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    return-void
.end method

.method constructor <init>(Landroidx/work/Constraints$Builder;)V
    .registers 4

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    iput-object v0, p0, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    const-wide/16 v0, -0x1

    .line 63
    iput-wide v0, p0, Landroidx/work/Constraints;->mTriggerContentUpdateDelay:J

    .line 66
    iput-wide v0, p0, Landroidx/work/Constraints;->mTriggerMaxContentDelay:J

    .line 71
    new-instance v0, Landroidx/work/ContentUriTriggers;

    invoke-direct {v0}, Landroidx/work/ContentUriTriggers;-><init>()V

    iput-object v0, p0, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    .line 82
    iget-boolean v0, p1, Landroidx/work/Constraints$Builder;->mRequiresCharging:Z

    iput-boolean v0, p0, Landroidx/work/Constraints;->mRequiresCharging:Z

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_24

    iget-boolean v0, p1, Landroidx/work/Constraints$Builder;->mRequiresDeviceIdle:Z

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    iput-boolean v0, p0, Landroidx/work/Constraints;->mRequiresDeviceIdle:Z

    .line 84
    iget-object v0, p1, Landroidx/work/Constraints$Builder;->mRequiredNetworkType:Landroidx/work/NetworkType;

    iput-object v0, p0, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    .line 85
    iget-boolean v0, p1, Landroidx/work/Constraints$Builder;->mRequiresBatteryNotLow:Z

    iput-boolean v0, p0, Landroidx/work/Constraints;->mRequiresBatteryNotLow:Z

    .line 86
    iget-boolean v0, p1, Landroidx/work/Constraints$Builder;->mRequiresStorageNotLow:Z

    iput-boolean v0, p0, Landroidx/work/Constraints;->mRequiresStorageNotLow:Z

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_45

    .line 88
    iget-object v0, p1, Landroidx/work/Constraints$Builder;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    iput-object v0, p0, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    .line 89
    iget-wide v0, p1, Landroidx/work/Constraints$Builder;->mTriggerContentUpdateDelay:J

    iput-wide v0, p0, Landroidx/work/Constraints;->mTriggerContentUpdateDelay:J

    .line 90
    iget-wide v0, p1, Landroidx/work/Constraints$Builder;->mTriggerContentMaxDelay:J

    iput-wide v0, p0, Landroidx/work/Constraints;->mTriggerMaxContentDelay:J

    :cond_45
    return-void
.end method

.method public constructor <init>(Landroidx/work/Constraints;)V
    .registers 4
    .param p1    # Landroidx/work/Constraints;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    iput-object v0, p0, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    const-wide/16 v0, -0x1

    .line 63
    iput-wide v0, p0, Landroidx/work/Constraints;->mTriggerContentUpdateDelay:J

    .line 66
    iput-wide v0, p0, Landroidx/work/Constraints;->mTriggerMaxContentDelay:J

    .line 71
    new-instance v0, Landroidx/work/ContentUriTriggers;

    invoke-direct {v0}, Landroidx/work/ContentUriTriggers;-><init>()V

    iput-object v0, p0, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    .line 95
    iget-boolean v0, p1, Landroidx/work/Constraints;->mRequiresCharging:Z

    iput-boolean v0, p0, Landroidx/work/Constraints;->mRequiresCharging:Z

    .line 96
    iget-boolean v0, p1, Landroidx/work/Constraints;->mRequiresDeviceIdle:Z

    iput-boolean v0, p0, Landroidx/work/Constraints;->mRequiresDeviceIdle:Z

    .line 97
    iget-object v0, p1, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    iput-object v0, p0, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    .line 98
    iget-boolean v0, p1, Landroidx/work/Constraints;->mRequiresBatteryNotLow:Z

    iput-boolean v0, p0, Landroidx/work/Constraints;->mRequiresBatteryNotLow:Z

    .line 99
    iget-boolean v0, p1, Landroidx/work/Constraints;->mRequiresStorageNotLow:Z

    iput-boolean v0, p0, Landroidx/work/Constraints;->mRequiresStorageNotLow:Z

    .line 100
    iget-object p1, p1, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    iput-object p1, p0, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_52

    .line 250
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_52

    .line 252
    :cond_12
    check-cast p1, Landroidx/work/Constraints;

    .line 254
    iget-boolean v1, p0, Landroidx/work/Constraints;->mRequiresCharging:Z

    iget-boolean v2, p1, Landroidx/work/Constraints;->mRequiresCharging:Z

    if-eq v1, v2, :cond_1b

    return v0

    .line 255
    :cond_1b
    iget-boolean v1, p0, Landroidx/work/Constraints;->mRequiresDeviceIdle:Z

    iget-boolean v2, p1, Landroidx/work/Constraints;->mRequiresDeviceIdle:Z

    if-eq v1, v2, :cond_22

    return v0

    .line 256
    :cond_22
    iget-boolean v1, p0, Landroidx/work/Constraints;->mRequiresBatteryNotLow:Z

    iget-boolean v2, p1, Landroidx/work/Constraints;->mRequiresBatteryNotLow:Z

    if-eq v1, v2, :cond_29

    return v0

    .line 257
    :cond_29
    iget-boolean v1, p0, Landroidx/work/Constraints;->mRequiresStorageNotLow:Z

    iget-boolean v2, p1, Landroidx/work/Constraints;->mRequiresStorageNotLow:Z

    if-eq v1, v2, :cond_30

    return v0

    .line 258
    :cond_30
    iget-wide v1, p0, Landroidx/work/Constraints;->mTriggerContentUpdateDelay:J

    iget-wide v3, p1, Landroidx/work/Constraints;->mTriggerContentUpdateDelay:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_39

    return v0

    .line 259
    :cond_39
    iget-wide v1, p0, Landroidx/work/Constraints;->mTriggerMaxContentDelay:J

    iget-wide v3, p1, Landroidx/work/Constraints;->mTriggerMaxContentDelay:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_42

    return v0

    .line 260
    :cond_42
    iget-object v1, p0, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    iget-object v2, p1, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    if-eq v1, v2, :cond_49

    return v0

    .line 261
    :cond_49
    iget-object v0, p0, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    iget-object p1, p1, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    invoke-virtual {v0, p1}, Landroidx/work/ContentUriTriggers;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_52
    :goto_52
    return v0
.end method

.method public getContentUriTriggers()Landroidx/work/ContentUriTriggers;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    return-object v0
.end method

.method public getRequiredNetworkType()Landroidx/work/NetworkType;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 104
    iget-object v0, p0, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    return-object v0
.end method

.method public getTriggerContentUpdateDelay()J
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 188
    iget-wide v0, p0, Landroidx/work/Constraints;->mTriggerContentUpdateDelay:J

    return-wide v0
.end method

.method public getTriggerMaxContentDelay()J
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 206
    iget-wide v0, p0, Landroidx/work/Constraints;->mTriggerMaxContentDelay:J

    return-wide v0
.end method

.method public hasContentUriTriggers()Z
    .registers 2
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    invoke-virtual {v0}, Landroidx/work/ContentUriTriggers;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public hashCode()I
    .registers 9

    .line 266
    iget-object v0, p0, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    invoke-virtual {v0}, Landroidx/work/NetworkType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 267
    iget-boolean v1, p0, Landroidx/work/Constraints;->mRequiresCharging:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 268
    iget-boolean v1, p0, Landroidx/work/Constraints;->mRequiresDeviceIdle:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 269
    iget-boolean v1, p0, Landroidx/work/Constraints;->mRequiresBatteryNotLow:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 270
    iget-boolean v1, p0, Landroidx/work/Constraints;->mRequiresStorageNotLow:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 271
    iget-wide v1, p0, Landroidx/work/Constraints;->mTriggerContentUpdateDelay:J

    iget-wide v3, p0, Landroidx/work/Constraints;->mTriggerContentUpdateDelay:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long v6, v1, v3

    long-to-int v1, v6

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 273
    iget-wide v1, p0, Landroidx/work/Constraints;->mTriggerMaxContentDelay:J

    iget-wide v3, p0, Landroidx/work/Constraints;->mTriggerMaxContentDelay:J

    ushr-long/2addr v3, v5

    xor-long v5, v1, v3

    long-to-int v1, v5

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 274
    iget-object v1, p0, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    invoke-virtual {v1}, Landroidx/work/ContentUriTriggers;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public requiresBatteryNotLow()Z
    .registers 2

    .line 154
    iget-boolean v0, p0, Landroidx/work/Constraints;->mRequiresBatteryNotLow:Z

    return v0
.end method

.method public requiresCharging()Z
    .registers 2

    .line 120
    iget-boolean v0, p0, Landroidx/work/Constraints;->mRequiresCharging:Z

    return v0
.end method

.method public requiresDeviceIdle()Z
    .registers 2
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 137
    iget-boolean v0, p0, Landroidx/work/Constraints;->mRequiresDeviceIdle:Z

    return v0
.end method

.method public requiresStorageNotLow()Z
    .registers 2

    .line 170
    iget-boolean v0, p0, Landroidx/work/Constraints;->mRequiresStorageNotLow:Z

    return v0
.end method

.method public setContentUriTriggers(Landroidx/work/ContentUriTriggers;)V
    .registers 2
    .param p1    # Landroidx/work/ContentUriTriggers;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 225
    iput-object p1, p0, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    return-void
.end method

.method public setRequiredNetworkType(Landroidx/work/NetworkType;)V
    .registers 2
    .param p1    # Landroidx/work/NetworkType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 113
    iput-object p1, p0, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    return-void
.end method

.method public setRequiresBatteryNotLow(Z)V
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 163
    iput-boolean p1, p0, Landroidx/work/Constraints;->mRequiresBatteryNotLow:Z

    return-void
.end method

.method public setRequiresCharging(Z)V
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 129
    iput-boolean p1, p0, Landroidx/work/Constraints;->mRequiresCharging:Z

    return-void
.end method

.method public setRequiresDeviceIdle(Z)V
    .registers 2
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 147
    iput-boolean p1, p0, Landroidx/work/Constraints;->mRequiresDeviceIdle:Z

    return-void
.end method

.method public setRequiresStorageNotLow(Z)V
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 179
    iput-boolean p1, p0, Landroidx/work/Constraints;->mRequiresStorageNotLow:Z

    return-void
.end method

.method public setTriggerContentUpdateDelay(J)V
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 197
    iput-wide p1, p0, Landroidx/work/Constraints;->mTriggerContentUpdateDelay:J

    return-void
.end method

.method public setTriggerMaxContentDelay(J)V
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 215
    iput-wide p1, p0, Landroidx/work/Constraints;->mTriggerMaxContentDelay:J

    return-void
.end method
