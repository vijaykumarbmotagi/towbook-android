.class public final Lcom/google/android/libraries/places/internal/do;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static a:Landroid/os/DropBoxManager;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "CrashReporter.class"
    .end annotation
.end field

.field private static final b:Ljava/util/LinkedHashMap;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "CrashReporter.class"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 37
    new-instance v0, Lcom/google/android/libraries/places/internal/dp;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/dp;-><init>(IFZ)V

    sput-object v0, Lcom/google/android/libraries/places/internal/do;->b:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .registers 10

    const/16 v0, 0x2e

    .line 26
    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    .line 27
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v1, -0x1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_14

    return-wide v1

    :cond_14
    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    .line 30
    :goto_17
    :try_start_17
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_32

    const-wide/16 v5, 0x64

    mul-long v3, v3, v5

    .line 31
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_2b} :catch_33

    int-to-long v5, v5

    add-long v7, v3, v5

    add-int/lit8 v0, v0, 0x1

    move-wide v3, v7

    goto :goto_17

    :cond_32
    move-wide v1, v3

    :catch_33
    return-wide v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/google/android/libraries/places/internal/do;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/android/libraries/places/internal/do;->a:Landroid/os/DropBoxManager;

    if-nez v1, :cond_15

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "dropbox"

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/DropBoxManager;

    sput-object p0, Lcom/google/android/libraries/places/internal/do;->a:Landroid/os/DropBoxManager;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    .line 5
    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    .line 0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/Throwable;)V
    .registers 15

    const-class v0, Lcom/google/android/libraries/places/internal/do;

    monitor-enter v0

    .line 6
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 8
    sget-object v4, Lcom/google/android/libraries/places/internal/do;->b:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_25

    .line 9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_8e

    if-ne v4, v3, :cond_25

    .line 10
    monitor-exit v0

    return-void

    .line 11
    :cond_25
    :try_start_25
    sget-object v4, Lcom/google/android/libraries/places/internal/do;->a:Landroid/os/DropBoxManager;

    if-eqz v4, :cond_8c

    sget-object v4, Lcom/google/android/libraries/places/internal/do;->a:Landroid/os/DropBoxManager;

    const-string v5, "system_app_crash"

    invoke-virtual {v4, v5}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 12
    sget-object v4, Lcom/google/android/libraries/places/internal/do;->a:Landroid/os/DropBoxManager;

    const-string v5, "system_app_crash"

    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1.0.0"

    const-string v8, "Package: %s v%d (%s)\n"

    const/4 v9, 0x3

    .line 15
    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "com.google.android.libraries.places"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 16
    invoke-static {v7}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v12, 0x1

    aput-object v10, v9, v12

    const/4 v10, 0x2

    aput-object v7, v9, v10

    .line 17
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 18
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Build: %s\n"

    new-array v8, v12, [Ljava/lang/Object;

    sget-object v9, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    aput-object v9, v8, v11

    .line 19
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    .line 20
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-virtual {v4, v5, p0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object p0, Lcom/google/android/libraries/places/internal/do;->b:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8c
    .catchall {:try_start_25 .. :try_end_8c} :catchall_8e

    .line 25
    :cond_8c
    monitor-exit v0

    return-void

    :catchall_8e
    move-exception p0

    .line 5
    monitor-exit v0

    throw p0
.end method
