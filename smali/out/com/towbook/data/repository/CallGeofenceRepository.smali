.class public Lcom/towbook/data/repository/CallGeofenceRepository;
.super Ljava/lang/Object;
.source "CallGeofenceRepository.java"


# instance fields
.field private dao:Lcom/towbook/data/dao/CallGeofenceDao;

.field private loaded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/data/entities/CallGeofence;",
            ">;"
        }
    .end annotation
.end field

.field private loadedCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/towbook/core/database/TowbookRoomDatabase;->getDatabase(Landroid/content/Context;)Lcom/towbook/core/database/TowbookRoomDatabase;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/towbook/core/database/TowbookRoomDatabase;->callGeofenceDao()Lcom/towbook/data/dao/CallGeofenceDao;

    move-result-object p1

    iput-object p1, p0, Lcom/towbook/data/repository/CallGeofenceRepository;->dao:Lcom/towbook/data/dao/CallGeofenceDao;

    return-void
.end method


# virtual methods
.method public addOrUpdate(II)V
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/towbook/data/repository/CallGeofenceRepository;->dao:Lcom/towbook/data/dao/CallGeofenceDao;

    invoke-interface {v0, p1}, Lcom/towbook/data/dao/CallGeofenceDao;->getByCallId(I)Lcom/towbook/data/entities/CallGeofence;

    move-result-object v0

    if-nez v0, :cond_24

    .line 65
    new-instance v0, Lcom/towbook/data/entities/CallGeofence;

    invoke-direct {v0}, Lcom/towbook/data/entities/CallGeofence;-><init>()V

    .line 66
    invoke-virtual {v0, p1}, Lcom/towbook/data/entities/CallGeofence;->setCallId(I)V

    .line 67
    invoke-virtual {v0, p2}, Lcom/towbook/data/entities/CallGeofence;->setCallStatusId(I)V

    .line 68
    new-instance p1, Lorg/joda/time/DateTime;

    invoke-direct {p1}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {p1}, Lorg/joda/time/DateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/towbook/data/entities/CallGeofence;->setCreateDate(Ljava/lang/String;)V

    goto :goto_27

    .line 70
    :cond_24
    invoke-virtual {v0, p2}, Lcom/towbook/data/entities/CallGeofence;->setCallStatusId(I)V

    .line 73
    :goto_27
    invoke-virtual {v0}, Lcom/towbook/data/entities/CallGeofence;->getId()I

    move-result p1

    if-lez p1, :cond_33

    .line 74
    iget-object p1, p0, Lcom/towbook/data/repository/CallGeofenceRepository;->dao:Lcom/towbook/data/dao/CallGeofenceDao;

    invoke-interface {p1, v0}, Lcom/towbook/data/dao/CallGeofenceDao;->update(Lcom/towbook/data/entities/CallGeofence;)V

    goto :goto_38

    .line 76
    :cond_33
    iget-object p1, p0, Lcom/towbook/data/repository/CallGeofenceRepository;->dao:Lcom/towbook/data/dao/CallGeofenceDao;

    invoke-interface {p1, v0}, Lcom/towbook/data/dao/CallGeofenceDao;->insert(Lcom/towbook/data/entities/CallGeofence;)V

    :goto_38
    return-void
.end method

.method public clear()V
    .registers 3

    .line 46
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/towbook/data/repository/CallGeofenceRepository$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/towbook/data/repository/CallGeofenceRepository$$Lambda$0;-><init>(Lcom/towbook/data/repository/CallGeofenceRepository;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public exists(I)Z
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/towbook/data/repository/CallGeofenceRepository;->loadedCallIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAddedCallIds()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iget-object v1, p0, Lcom/towbook/data/repository/CallGeofenceRepository;->dao:Lcom/towbook/data/dao/CallGeofenceDao;

    invoke-interface {v1}, Lcom/towbook/data/dao/CallGeofenceDao;->getAll()Ljava/util/List;

    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/towbook/data/entities/CallGeofence;

    .line 30
    invoke-virtual {v2}, Lcom/towbook/data/entities/CallGeofence;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_27
    return-object v0
.end method

.method public getLoadedByCallId(I)Lcom/towbook/data/entities/CallGeofence;
    .registers 5

    .line 54
    iget-object v0, p0, Lcom/towbook/data/repository/CallGeofenceRepository;->loaded:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/data/entities/CallGeofence;

    .line 55
    invoke-virtual {v1}, Lcom/towbook/data/entities/CallGeofence;->getCallId()I

    move-result v2

    if-ne v2, p1, :cond_6

    return-object v1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method final synthetic lambda$clear$0$CallGeofenceRepository()V
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/towbook/data/repository/CallGeofenceRepository;->dao:Lcom/towbook/data/dao/CallGeofenceDao;

    invoke-interface {v0}, Lcom/towbook/data/dao/CallGeofenceDao;->deleteAll()V

    return-void
.end method

.method public load()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/data/entities/CallGeofence;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/towbook/data/repository/CallGeofenceRepository;->dao:Lcom/towbook/data/dao/CallGeofenceDao;

    invoke-interface {v0}, Lcom/towbook/data/dao/CallGeofenceDao;->getAll()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/data/repository/CallGeofenceRepository;->loaded:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/towbook/data/repository/CallGeofenceRepository;->loadedCallIds:Ljava/util/List;

    .line 39
    iget-object v0, p0, Lcom/towbook/data/repository/CallGeofenceRepository;->loaded:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/data/entities/CallGeofence;

    .line 40
    iget-object v2, p0, Lcom/towbook/data/repository/CallGeofenceRepository;->loadedCallIds:Ljava/util/List;

    invoke-virtual {v1}, Lcom/towbook/data/entities/CallGeofence;->getCallId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 42
    :cond_2f
    iget-object v0, p0, Lcom/towbook/data/repository/CallGeofenceRepository;->loaded:Ljava/util/List;

    return-object v0
.end method
