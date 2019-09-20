.class public Landroid/databinding/BaseObservable;
.super Ljava/lang/Object;
.source "BaseObservable.java"

# interfaces
.implements Landroid/databinding/Observable;


# instance fields
.field private transient mCallbacks:Landroid/databinding/PropertyChangeRegistry;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnPropertyChangedCallback(Landroid/databinding/Observable$OnPropertyChangedCallback;)V
    .registers 3
    .param p1    # Landroid/databinding/Observable$OnPropertyChangedCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    monitor-enter p0

    .line 34
    :try_start_1
    iget-object v0, p0, Landroid/databinding/BaseObservable;->mCallbacks:Landroid/databinding/PropertyChangeRegistry;

    if-nez v0, :cond_c

    .line 35
    new-instance v0, Landroid/databinding/PropertyChangeRegistry;

    invoke-direct {v0}, Landroid/databinding/PropertyChangeRegistry;-><init>()V

    iput-object v0, p0, Landroid/databinding/BaseObservable;->mCallbacks:Landroid/databinding/PropertyChangeRegistry;

    .line 37
    :cond_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_13

    .line 38
    iget-object v0, p0, Landroid/databinding/BaseObservable;->mCallbacks:Landroid/databinding/PropertyChangeRegistry;

    invoke-virtual {v0, p1}, Landroid/databinding/PropertyChangeRegistry;->add(Ljava/lang/Object;)V

    return-void

    :catchall_13
    move-exception p1

    .line 37
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public notifyChange()V
    .registers 4

    .line 55
    monitor-enter p0

    .line 56
    :try_start_1
    iget-object v0, p0, Landroid/databinding/BaseObservable;->mCallbacks:Landroid/databinding/PropertyChangeRegistry;

    if-nez v0, :cond_7

    .line 57
    monitor-exit p0

    return-void

    .line 59
    :cond_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    .line 60
    iget-object v0, p0, Landroid/databinding/BaseObservable;->mCallbacks:Landroid/databinding/PropertyChangeRegistry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/databinding/PropertyChangeRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    :catchall_10
    move-exception v0

    .line 59
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public notifyPropertyChanged(I)V
    .registers 4

    .line 71
    monitor-enter p0

    .line 72
    :try_start_1
    iget-object v0, p0, Landroid/databinding/BaseObservable;->mCallbacks:Landroid/databinding/PropertyChangeRegistry;

    if-nez v0, :cond_7

    .line 73
    monitor-exit p0

    return-void

    .line 75
    :cond_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_f

    .line 76
    iget-object v0, p0, Landroid/databinding/BaseObservable;->mCallbacks:Landroid/databinding/PropertyChangeRegistry;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/databinding/PropertyChangeRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    :catchall_f
    move-exception p1

    .line 75
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public removeOnPropertyChangedCallback(Landroid/databinding/Observable$OnPropertyChangedCallback;)V
    .registers 3
    .param p1    # Landroid/databinding/Observable$OnPropertyChangedCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    monitor-enter p0

    .line 44
    :try_start_1
    iget-object v0, p0, Landroid/databinding/BaseObservable;->mCallbacks:Landroid/databinding/PropertyChangeRegistry;

    if-nez v0, :cond_7

    .line 45
    monitor-exit p0

    return-void

    .line 47
    :cond_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_e

    .line 48
    iget-object v0, p0, Landroid/databinding/BaseObservable;->mCallbacks:Landroid/databinding/PropertyChangeRegistry;

    invoke-virtual {v0, p1}, Landroid/databinding/PropertyChangeRegistry;->remove(Ljava/lang/Object;)V

    return-void

    :catchall_e
    move-exception p1

    .line 47
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method
