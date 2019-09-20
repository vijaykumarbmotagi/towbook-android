.class Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;
.super Landroid/arch/lifecycle/MutableLiveData;
.source "Preferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastCancelAllLiveData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/lifecycle/MutableLiveData<",
        "Ljava/lang/Long;",
        ">;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;"
    }
.end annotation


# instance fields
.field private mLastCancelAllTimeMillis:J

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 5

    .line 115
    invoke-direct {p0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    .line 116
    iput-object p1, p0, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 117
    iget-object p1, p0, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "last_cancel_all_time_ms"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mLastCancelAllTimeMillis:J

    .line 118
    iget-wide v0, p0, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mLastCancelAllTimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onActive()V
    .registers 2

    .line 134
    invoke-super {p0}, Landroid/arch/lifecycle/MutableLiveData;->onActive()V

    .line 135
    iget-object v0, p0, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method protected onInactive()V
    .registers 2

    .line 140
    invoke-super {p0}, Landroid/arch/lifecycle/MutableLiveData;->onInactive()V

    .line 141
    iget-object v0, p0, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 6

    const-string v0, "last_cancel_all_time_ms"

    .line 123
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-wide/16 v0, 0x0

    .line 124
    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    .line 125
    iget-wide v0, p0, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mLastCancelAllTimeMillis:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_1f

    .line 126
    iput-wide p1, p0, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mLastCancelAllTimeMillis:J

    .line 127
    iget-wide p1, p0, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mLastCancelAllTimeMillis:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method
