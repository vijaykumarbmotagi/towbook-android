.class final Lcom/crashlytics/android/core/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capFileCount(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FilenameFilter;",
            "I",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 21
    array-length p1, p0

    if-le p1, p2, :cond_1e

    .line 23
    invoke-static {p0, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 24
    array-length p1, p0

    .line 25
    array-length p3, p0

    const/4 v0, 0x0

    :goto_f
    if-ge v0, p3, :cond_1e

    aget-object v1, p0, v0

    if-gt p1, p2, :cond_16

    return-void

    .line 30
    :cond_16
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1e
    return-void
.end method
