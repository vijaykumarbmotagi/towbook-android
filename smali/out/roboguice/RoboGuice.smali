.class public Lroboguice/RoboGuice;
.super Ljava/lang/Object;
.source "RoboGuice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lroboguice/RoboGuice$util;
    }
.end annotation


# static fields
.field public static DEFAULT_STAGE:Lcom/google/inject/Stage;

.field protected static injectors:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Application;",
            "Lcom/google/inject/Injector;",
            ">;"
        }
    .end annotation
.end field

.field protected static modulesResourceId:I

.field protected static resourceListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Application;",
            "Lroboguice/inject/ResourceListener;",
            ">;"
        }
    .end annotation
.end field

.field protected static viewListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Application;",
            "Lroboguice/inject/ViewListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    sget-object v0, Lcom/google/inject/Stage;->PRODUCTION:Lcom/google/inject/Stage;

    sput-object v0, Lroboguice/RoboGuice;->DEFAULT_STAGE:Lcom/google/inject/Stage;

    .line 38
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lroboguice/RoboGuice;->injectors:Ljava/util/WeakHashMap;

    .line 39
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lroboguice/RoboGuice;->resourceListeners:Ljava/util/WeakHashMap;

    .line 40
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lroboguice/RoboGuice;->viewListeners:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroyInjector(Landroid/content/Context;)V
    .registers 3

    .line 198
    invoke-static {p0}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    .line 199
    const-class v1, Lroboguice/event/EventManager;

    invoke-interface {v0, v1}, Lroboguice/inject/RoboInjector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lroboguice/event/EventManager;

    invoke-virtual {v0}, Lroboguice/event/EventManager;->destroy()V

    .line 200
    sget-object v0, Lroboguice/RoboGuice;->injectors:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getBaseApplicationInjector(Landroid/app/Application;)Lcom/google/inject/Injector;
    .registers 3

    .line 50
    sget-object v0, Lroboguice/RoboGuice;->injectors:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Injector;

    if-eqz v0, :cond_b

    return-object v0

    .line 54
    :cond_b
    const-class v0, Lroboguice/RoboGuice;

    monitor-enter v0

    .line 55
    :try_start_e
    sget-object v1, Lroboguice/RoboGuice;->injectors:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/Injector;

    if-eqz v1, :cond_1a

    .line 57
    monitor-exit v0

    return-object v1

    .line 59
    :cond_1a
    sget-object v1, Lroboguice/RoboGuice;->DEFAULT_STAGE:Lcom/google/inject/Stage;

    invoke-static {p0, v1}, Lroboguice/RoboGuice;->setBaseApplicationInjector(Landroid/app/Application;Lcom/google/inject/Stage;)Lcom/google/inject/Injector;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_22
    move-exception p0

    .line 60
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_22

    throw p0
.end method

.method public static getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;
    .registers 4

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 149
    new-instance v1, Lroboguice/inject/ContextScopedRoboInjector;

    invoke-static {v0}, Lroboguice/RoboGuice;->getBaseApplicationInjector(Landroid/app/Application;)Lcom/google/inject/Injector;

    move-result-object v2

    invoke-static {v0}, Lroboguice/RoboGuice;->getViewListener(Landroid/app/Application;)Lroboguice/inject/ViewListener;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lroboguice/inject/ContextScopedRoboInjector;-><init>(Landroid/content/Context;Lcom/google/inject/Injector;Lroboguice/inject/ViewListener;)V

    return-object v1
.end method

.method protected static getResourceListener(Landroid/app/Application;)Lroboguice/inject/ResourceListener;
    .registers 4

    .line 172
    sget-object v0, Lroboguice/RoboGuice;->resourceListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lroboguice/inject/ResourceListener;

    if-nez v0, :cond_20

    .line 174
    const-class v1, Lroboguice/RoboGuice;

    monitor-enter v1

    if-nez v0, :cond_1c

    .line 176
    :try_start_f
    new-instance v0, Lroboguice/inject/ResourceListener;

    invoke-direct {v0, p0}, Lroboguice/inject/ResourceListener;-><init>(Landroid/app/Application;)V

    .line 177
    sget-object v2, Lroboguice/RoboGuice;->resourceListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_1e

    .line 179
    :cond_1c
    :goto_1c
    monitor-exit v1

    goto :goto_20

    :goto_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_1a

    throw p0

    :cond_20
    :goto_20
    return-object v0
.end method

.method protected static getViewListener(Landroid/app/Application;)Lroboguice/inject/ViewListener;
    .registers 4

    .line 185
    sget-object v0, Lroboguice/RoboGuice;->viewListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lroboguice/inject/ViewListener;

    if-nez v0, :cond_20

    .line 187
    const-class v1, Lroboguice/RoboGuice;

    monitor-enter v1

    if-nez v0, :cond_1c

    .line 189
    :try_start_f
    new-instance v0, Lroboguice/inject/ViewListener;

    invoke-direct {v0}, Lroboguice/inject/ViewListener;-><init>()V

    .line 190
    sget-object v2, Lroboguice/RoboGuice;->viewListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_1e

    .line 192
    :cond_1c
    :goto_1c
    monitor-exit v1

    goto :goto_20

    :goto_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_1a

    throw p0

    :cond_20
    :goto_20
    return-object v0
.end method

.method public static injectMembers(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "TT;)TT;"
        }
    .end annotation

    .line 156
    invoke-static {p0}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object p0

    invoke-interface {p0, p1}, Lroboguice/inject/RoboInjector;->injectMembers(Ljava/lang/Object;)V

    return-object p1
.end method

.method public static newDefaultRoboModule(Landroid/app/Application;)Lroboguice/config/DefaultRoboModule;
    .registers 5

    .line 163
    new-instance v0, Lroboguice/config/DefaultRoboModule;

    new-instance v1, Lroboguice/inject/ContextScope;

    invoke-direct {v1, p0}, Lroboguice/inject/ContextScope;-><init>(Landroid/app/Application;)V

    invoke-static {p0}, Lroboguice/RoboGuice;->getViewListener(Landroid/app/Application;)Lroboguice/inject/ViewListener;

    move-result-object v2

    invoke-static {p0}, Lroboguice/RoboGuice;->getResourceListener(Landroid/app/Application;)Lroboguice/inject/ResourceListener;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lroboguice/config/DefaultRoboModule;-><init>(Landroid/app/Application;Lroboguice/inject/ContextScope;Lroboguice/inject/ViewListener;Lroboguice/inject/ResourceListener;)V

    return-object v0
.end method

.method public static setBaseApplicationInjector(Landroid/app/Application;Lcom/google/inject/Stage;)Lcom/google/inject/Injector;
    .registers 12

    .line 113
    const-class v0, Lroboguice/RoboGuice;

    monitor-enter v0

    .line 114
    :try_start_3
    sget v1, Lroboguice/RoboGuice;->modulesResourceId:I

    if-nez v1, :cond_17

    .line 116
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "roboguice_modules"

    const-string v3, "array"

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :cond_17
    const/4 v2, 0x0

    if-lez v1, :cond_23

    .line 118
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    :cond_23
    new-array v1, v2, [Ljava/lang/String;

    .line 119
    :goto_25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-static {p0}, Lroboguice/RoboGuice;->newDefaultRoboModule(Landroid/app/Application;)Lroboguice/config/DefaultRoboModule;

    move-result-object v4

    .line 122
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_80

    .line 125
    :try_start_31
    array-length v4, v1

    const/4 v5, 0x0

    :goto_33
    if-ge v5, v4, :cond_62

    aget-object v6, v1, v5

    .line 126
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/google/inject/Module;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_41} :catch_79
    .catchall {:try_start_31 .. :try_end_41} :catchall_80

    const/4 v7, 0x1

    .line 129
    :try_start_42
    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v2

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v2

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catch Ljava/lang/NoSuchMethodException; {:try_start_42 .. :try_end_57} :catch_58
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_57} :catch_79
    .catchall {:try_start_42 .. :try_end_57} :catchall_80

    goto :goto_5f

    .line 131
    :catch_58
    :try_start_58
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5f} :catch_79
    .catchall {:try_start_58 .. :try_end_5f} :catchall_80

    :goto_5f
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 139
    :cond_62
    :try_start_62
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/inject/Module;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/inject/Module;

    invoke-static {p0, p1, v1}, Lroboguice/RoboGuice;->setBaseApplicationInjector(Landroid/app/Application;Lcom/google/inject/Stage;[Lcom/google/inject/Module;)Lcom/google/inject/Injector;

    move-result-object p1

    .line 140
    sget-object v1, Lroboguice/RoboGuice;->injectors:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    monitor-exit v0

    return-object p1

    :catch_79
    move-exception p0

    .line 136
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_80
    move-exception p0

    .line 142
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_62 .. :try_end_82} :catchall_80

    throw p0
.end method

.method public static varargs setBaseApplicationInjector(Landroid/app/Application;Lcom/google/inject/Stage;[Lcom/google/inject/Module;)Lcom/google/inject/Injector;
    .registers 6

    .line 83
    invoke-static {p2}, Lcom/google/inject/spi/Elements;->getElements([Lcom/google/inject/Module;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/spi/Element;

    .line 84
    new-instance v2, Lroboguice/RoboGuice$1;

    invoke-direct {v2, p0}, Lroboguice/RoboGuice$1;-><init>(Landroid/app/Application;)V

    invoke-interface {v1, v2}, Lcom/google/inject/spi/Element;->acceptVisitor(Lcom/google/inject/spi/ElementVisitor;)Ljava/lang/Object;

    goto :goto_8

    .line 93
    :cond_1d
    const-class v0, Lroboguice/RoboGuice;

    monitor-enter v0

    .line 94
    :try_start_20
    invoke-static {p1, p2}, Lcom/google/inject/Guice;->createInjector(Lcom/google/inject/Stage;[Lcom/google/inject/Module;)Lcom/google/inject/Injector;

    move-result-object p1

    .line 95
    sget-object p2, Lroboguice/RoboGuice;->injectors:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    monitor-exit v0

    return-object p1

    :catchall_2b
    move-exception p0

    .line 97
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public static setModulesResourceId(I)V
    .registers 1

    .line 105
    sput p0, Lroboguice/RoboGuice;->modulesResourceId:I

    return-void
.end method
