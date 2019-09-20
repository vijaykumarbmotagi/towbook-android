.class public Landroid/support/v7/preference/PreferenceManagerFix;
.super Landroid/support/v7/preference/PreferenceManager;
.source "PreferenceManagerFix.java"


# static fields
.field private static editorField:Ljava/lang/reflect/Field;


# instance fields
.field private inflateInProgress:Z

.field private noCommit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 17
    const-class v0, Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 18
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_20

    aget-object v3, v0, v2

    .line 20
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Landroid/content/SharedPreferences$Editor;

    if-ne v4, v5, :cond_1d

    .line 21
    sput-object v3, Landroid/support/v7/preference/PreferenceManagerFix;->editorField:Ljava/lang/reflect/Field;

    .line 22
    sget-object v0, Landroid/support/v7/preference/PreferenceManagerFix;->editorField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_20

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_20
    :goto_20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Landroid/support/v7/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private setNoCommitFix(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 95
    sget-object v0, Landroid/support/v7/preference/PreferenceManagerFix;->editorField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_13

    if-eqz v0, :cond_13

    .line 98
    invoke-static {}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->getInstance()Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 101
    :cond_13
    iput-boolean p1, p0, Landroid/support/v7/preference/PreferenceManagerFix;->noCommit:Z

    return-void
.end method


# virtual methods
.method getEditor()Landroid/content/SharedPreferences$Editor;
    .registers 3

    .line 63
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceManagerFix;->inflateInProgress:Z

    if-eqz v0, :cond_31

    sget-object v0, Landroid/support/v7/preference/PreferenceManagerFix;->editorField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_9

    goto :goto_31

    .line 67
    :cond_9
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceManagerFix;->noCommit:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    .line 70
    :try_start_e
    sget-object v1, Landroid/support/v7/preference/PreferenceManagerFix;->editorField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$Editor;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_16} :catch_27

    if-nez v1, :cond_26

    .line 73
    :try_start_18
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceManagerFix;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_20} :catch_26

    .line 74
    :try_start_20
    sget-object v1, Landroid/support/v7/preference/PreferenceManagerFix;->editorField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_25} :catch_27

    goto :goto_27

    :catch_26
    :cond_26
    move-object v0, v1

    :catch_27
    :goto_27
    return-object v0

    .line 81
    :cond_28
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceManagerFix;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0

    .line 64
    :cond_31
    :goto_31
    invoke-super {p0}, Landroid/support/v7/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 35
    :try_start_2
    iput-boolean v0, p0, Landroid/support/v7/preference/PreferenceManagerFix;->inflateInProgress:Z

    .line 36
    invoke-direct {p0, v0}, Landroid/support/v7/preference/PreferenceManagerFix;->setNoCommitFix(Z)V

    .line 37
    new-instance v2, Landroid/support/v7/preference/PreferenceInflater;

    invoke-direct {v2, p1, p0}, Landroid/support/v7/preference/PreferenceInflater;-><init>(Landroid/content/Context;Landroid/support/v7/preference/PreferenceManager;)V

    .line 39
    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceInflater;->getDefaultPackages()[Ljava/lang/String;

    move-result-object v3

    .line 41
    array-length v4, v3

    add-int/2addr v4, v0

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "com.takisoft.fix.support.v7.preference."

    .line 42
    aput-object v5, v4, v1

    .line 43
    array-length v5, v3

    invoke-static {v3, v1, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceInflater;->setDefaultPackages([Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2, p2, p3}, Landroid/support/v7/preference/PreferenceInflater;->inflate(ILandroid/support/v7/preference/PreferenceGroup;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_25} :catch_37
    .catchall {:try_start_2 .. :try_end_25} :catchall_35

    .line 48
    :try_start_25
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceScreen;->onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V

    .line 49
    invoke-direct {p0, v1}, Landroid/support/v7/preference/PreferenceManagerFix;->setNoCommitFix(Z)V

    .line 50
    iput-boolean v1, p0, Landroid/support/v7/preference/PreferenceManagerFix;->inflateInProgress:Z
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_2d} :catch_30
    .catchall {:try_start_25 .. :try_end_2d} :catchall_35

    .line 55
    iput-boolean v1, p0, Landroid/support/v7/preference/PreferenceManagerFix;->inflateInProgress:Z

    return-object v0

    :catch_30
    move-exception p3

    move-object v6, v0

    move-object v0, p3

    move-object p3, v6

    goto :goto_38

    :catchall_35
    move-exception p1

    goto :goto_42

    :catch_37
    move-exception v0

    .line 53
    :goto_38
    :try_start_38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_35

    .line 55
    iput-boolean v1, p0, Landroid/support/v7/preference/PreferenceManagerFix;->inflateInProgress:Z

    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    return-object p1

    .line 55
    :goto_42
    iput-boolean v1, p0, Landroid/support/v7/preference/PreferenceManagerFix;->inflateInProgress:Z

    throw p1
.end method

.method shouldCommit()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceManagerFix;->inflateInProgress:Z

    if-nez v0, :cond_9

    .line 88
    invoke-super {p0}, Landroid/support/v7/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    return v0

    .line 90
    :cond_9
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceManagerFix;->noCommit:Z

    return v0
.end method
