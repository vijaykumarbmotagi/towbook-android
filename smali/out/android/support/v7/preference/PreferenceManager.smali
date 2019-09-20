.class public Landroid/support/v7/preference/PreferenceManager;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;,
        Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;,
        Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;,
        Landroid/support/v7/preference/PreferenceManager$SimplePreferenceComparisonCallback;,
        Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;
    }
.end annotation


# static fields
.field public static final KEY_HAS_SET_DEFAULT_VALUES:Ljava/lang/String; = "_has_set_default_values"

.field private static final STORAGE_DEFAULT:I = 0x0

.field private static final STORAGE_DEVICE_PROTECTED:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mNextId:J

.field private mNoCommit:Z

.field private mOnDisplayPreferenceDialogListener:Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

.field private mOnNavigateToScreenListener:Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;

.field private mOnPreferenceTreeClickListener:Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;

.field private mPreferenceComparisonCallback:Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;

.field private mPreferenceDataStore:Landroid/support/v7/preference/PreferenceDataStore;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSharedPreferencesMode:I

.field private mSharedPreferencesName:Ljava/lang/String;

.field private mStorage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 53
    iput-wide v0, p0, Landroid/support/v7/preference/PreferenceManager;->mNextId:J

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Landroid/support/v7/preference/PreferenceManager;->mStorage:I

    .line 113
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceManager;->mContext:Landroid/content/Context;

    .line 115
    invoke-static {p1}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 346
    invoke-static {p0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    .line 346
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultSharedPreferencesMode()I
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method private static getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_preferences"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setDefaultValues(Landroid/content/Context;IZ)V
    .registers 5

    .line 423
    invoke-static {p0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-static {}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    .line 423
    invoke-static {p0, v0, v1, p1, p2}, Landroid/support/v7/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public static setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .registers 7

    const-string v0, "_has_set_default_values"

    const/4 v1, 0x0

    .line 457
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez p4, :cond_11

    const-string p4, "_has_set_default_values"

    .line 460
    invoke-interface {v0, p4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    if-nez p4, :cond_2e

    .line 461
    :cond_11
    new-instance p4, Landroid/support/v7/preference/PreferenceManager;

    invoke-direct {p4, p0}, Landroid/support/v7/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 462
    invoke-virtual {p4, p1}, Landroid/support/v7/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p4, p2}, Landroid/support/v7/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    const/4 p1, 0x0

    .line 464
    invoke-virtual {p4, p0, p3, p1}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    .line 466
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "_has_set_default_values"

    const/4 p2, 0x1

    .line 467
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 468
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2e
    return-void
.end method

.method private setNoCommit(Z)V
    .registers 3

    if-nez p1, :cond_b

    .line 511
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_b

    .line 512
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 514
    :cond_b
    iput-boolean p1, p0, Landroid/support/v7/preference/PreferenceManager;->mNoCommit:Z

    return-void
.end method


# virtual methods
.method public createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;
    .registers 4

    .line 147
    new-instance v0, Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceScreen;->onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V

    return-object v0
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;
    .registers 3

    .line 393
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 397
    :cond_6
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 523
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getEditor()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .line 482
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceDataStore:Landroid/support/v7/preference/PreferenceDataStore;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 486
    :cond_6
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceManager;->mNoCommit:Z

    if-eqz v0, :cond_1b

    .line 487
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_18

    .line 488
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 491
    :cond_18
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0

    .line 493
    :cond_1b
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method getNextId()J
    .registers 7

    .line 158
    monitor-enter p0

    .line 159
    :try_start_1
    iget-wide v0, p0, Landroid/support/v7/preference/PreferenceManager;->mNextId:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iput-wide v4, p0, Landroid/support/v7/preference/PreferenceManager;->mNextId:J

    monitor-exit p0

    return-wide v0

    :catchall_b
    move-exception v0

    .line 160
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getOnDisplayPreferenceDialogListener()Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;
    .registers 2

    .line 536
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    return-object v0
.end method

.method public getOnNavigateToScreenListener()Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;
    .registers 2

    .line 583
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mOnNavigateToScreenListener:Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;

    return-object v0
.end method

.method public getOnPreferenceTreeClickListener()Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;
    .registers 2

    .line 566
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;

    return-object v0
.end method

.method public getPreferenceComparisonCallback()Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;
    .registers 2

    .line 527
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceComparisonCallback:Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;

    return-object v0
.end method

.method public getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 303
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceDataStore:Landroid/support/v7/preference/PreferenceDataStore;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;
    .registers 2

    .line 364
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 4

    .line 315
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceManager;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 319
    :cond_8
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_24

    .line 321
    iget v0, p0, Landroid/support/v7/preference/PreferenceManager;->mStorage:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    .line 326
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mContext:Landroid/content/Context;

    goto :goto_1a

    .line 323
    :cond_14
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/ContextCompat;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 330
    :goto_1a
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    iget v2, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferencesMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 334
    :cond_24
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSharedPreferencesMode()I
    .registers 2

    .line 197
    iget v0, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferencesMode:I

    return v0
.end method

.method public getSharedPreferencesName()Ljava/lang/String;
    .registers 2

    .line 171
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    return-object v0
.end method

.method public inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;
    .registers 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x1

    .line 134
    invoke-direct {p0, v0}, Landroid/support/v7/preference/PreferenceManager;->setNoCommit(Z)V

    .line 136
    new-instance v0, Landroid/support/v7/preference/PreferenceInflater;

    invoke-direct {v0, p1, p0}, Landroid/support/v7/preference/PreferenceInflater;-><init>(Landroid/content/Context;Landroid/support/v7/preference/PreferenceManager;)V

    .line 137
    invoke-virtual {v0, p2, p3}, Landroid/support/v7/preference/PreferenceInflater;->inflate(ILandroid/support/v7/preference/PreferenceGroup;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/PreferenceScreen;

    .line 138
    invoke-virtual {p1, p0}, Landroid/support/v7/preference/PreferenceScreen;->onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V

    const/4 p2, 0x0

    .line 141
    invoke-direct {p0, p2}, Landroid/support/v7/preference/PreferenceManager;->setNoCommit(Z)V

    return-object p1
.end method

.method public isStorageDefault()Z
    .registers 4

    .line 258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-lt v0, v2, :cond_e

    .line 259
    iget v0, p0, Landroid/support/v7/preference/PreferenceManager;->mStorage:I

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1

    :cond_e
    return v1
.end method

.method public isStorageDeviceProtected()Z
    .registers 4

    .line 273
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_e

    .line 274
    iget v0, p0, Landroid/support/v7/preference/PreferenceManager;->mStorage:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1

    :cond_e
    return v1
.end method

.method public setOnDisplayPreferenceDialogListener(Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V
    .registers 2

    .line 541
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    return-void
.end method

.method public setOnNavigateToScreenListener(Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;)V
    .registers 2

    .line 576
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceManager;->mOnNavigateToScreenListener:Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;

    return-void
.end method

.method public setOnPreferenceTreeClickListener(Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;)V
    .registers 2

    .line 562
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;

    return-void
.end method

.method public setPreferenceComparisonCallback(Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;)V
    .registers 2

    .line 532
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceComparisonCallback:Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;

    return-void
.end method

.method public setPreferenceDataStore(Landroid/support/v7/preference/PreferenceDataStore;)V
    .registers 2

    .line 291
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceDataStore:Landroid/support/v7/preference/PreferenceDataStore;

    return-void
.end method

.method public setPreferences(Landroid/support/v7/preference/PreferenceScreen;)Z
    .registers 3

    .line 374
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    if-eq p1, v0, :cond_11

    .line 375
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_d

    .line 376
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->onDetached()V

    .line 378
    :cond_d
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public setSharedPreferencesMode(I)V
    .registers 2

    .line 208
    iput p1, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferencesMode:I

    const/4 p1, 0x0

    .line 209
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public setSharedPreferencesName(Ljava/lang/String;)V
    .registers 2

    .line 185
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 186
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public setStorageDefault()V
    .registers 3

    .line 217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_c

    const/4 v0, 0x0

    .line 218
    iput v0, p0, Landroid/support/v7/preference/PreferenceManager;->mStorage:I

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_c
    return-void
.end method

.method public setStorageDeviceProtected()V
    .registers 3

    .line 244
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    .line 245
    iput v0, p0, Landroid/support/v7/preference/PreferenceManager;->mStorage:I

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_c
    return-void
.end method

.method shouldCommit()Z
    .registers 2

    .line 507
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceManager;->mNoCommit:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public showDialog(Landroid/support/v7/preference/Preference;)V
    .registers 3

    .line 550
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    if-eqz v0, :cond_9

    .line 551
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    invoke-interface {v0, p1}, Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;->onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V

    :cond_9
    return-void
.end method
