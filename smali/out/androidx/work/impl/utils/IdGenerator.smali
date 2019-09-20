.class public Landroidx/work/impl/utils/IdGenerator;
.super Ljava/lang/Object;
.source "IdGenerator.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final INITIAL_ID:I = 0x0

.field static final NEXT_ALARM_MANAGER_ID_KEY:Ljava/lang/String; = "next_alarm_manager_id"

.field static final NEXT_JOB_SCHEDULER_ID_KEY:Ljava/lang/String; = "next_job_scheduler_id"

.field static final PREFERENCE_FILE_KEY:Ljava/lang/String; = "androidx.work.util.id"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLoadedPreferences:Z

.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/work/impl/utils/IdGenerator;->mContext:Landroid/content/Context;

    return-void
.end method

.method private loadPreferencesIfNecessary()V
    .registers 4

    .line 97
    iget-boolean v0, p0, Landroidx/work/impl/utils/IdGenerator;->mLoadedPreferences:Z

    if-nez v0, :cond_12

    .line 98
    iget-object v0, p0, Landroidx/work/impl/utils/IdGenerator;->mContext:Landroid/content/Context;

    const-string v1, "androidx.work.util.id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/utils/IdGenerator;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Landroidx/work/impl/utils/IdGenerator;->mLoadedPreferences:Z

    :cond_12
    return-void
.end method

.method private nextId(Ljava/lang/String;)I
    .registers 5

    .line 86
    iget-object v0, p0, Landroidx/work/impl/utils/IdGenerator;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_d

    goto :goto_f

    :cond_d
    add-int/lit8 v1, v0, 0x1

    .line 88
    :goto_f
    invoke-direct {p0, p1, v1}, Landroidx/work/impl/utils/IdGenerator;->update(Ljava/lang/String;I)V

    return v0
.end method

.method private update(Ljava/lang/String;I)V
    .registers 4

    .line 93
    iget-object v0, p0, Landroidx/work/impl/utils/IdGenerator;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public nextAlarmManagerId()I
    .registers 3

    .line 73
    const-class v0, Landroidx/work/impl/utils/IdGenerator;

    monitor-enter v0

    .line 74
    :try_start_3
    invoke-direct {p0}, Landroidx/work/impl/utils/IdGenerator;->loadPreferencesIfNecessary()V

    const-string v1, "next_alarm_manager_id"

    .line 75
    invoke-direct {p0, v1}, Landroidx/work/impl/utils/IdGenerator;->nextId(Ljava/lang/String;)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_e
    move-exception v1

    .line 76
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public nextJobSchedulerIdWithRange(II)I
    .registers 5

    .line 57
    const-class v0, Landroidx/work/impl/utils/IdGenerator;

    monitor-enter v0

    .line 58
    :try_start_3
    invoke-direct {p0}, Landroidx/work/impl/utils/IdGenerator;->loadPreferencesIfNecessary()V

    const-string v1, "next_job_scheduler_id"

    .line 59
    invoke-direct {p0, v1}, Landroidx/work/impl/utils/IdGenerator;->nextId(Ljava/lang/String;)I

    move-result v1

    if-lt v1, p1, :cond_13

    if-le v1, p2, :cond_11

    goto :goto_13

    :cond_11
    move p1, v1

    goto :goto_1a

    :cond_13
    :goto_13
    const-string p2, "next_job_scheduler_id"

    add-int/lit8 v1, p1, 0x1

    .line 63
    invoke-direct {p0, p2, v1}, Landroidx/work/impl/utils/IdGenerator;->update(Ljava/lang/String;I)V

    .line 65
    :goto_1a
    monitor-exit v0

    return p1

    :catchall_1c
    move-exception p1

    .line 66
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method
