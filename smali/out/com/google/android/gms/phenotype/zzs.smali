.class final Lcom/google/android/gms/phenotype/zzs;
.super Lcom/google/android/gms/phenotype/PhenotypeFlag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/phenotype/PhenotypeFlag<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/phenotype/PhenotypeFlag$Factory;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/phenotype/PhenotypeFlag;-><init>(Lcom/google/android/gms/phenotype/PhenotypeFlag$Factory;Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/phenotype/zzr;)V

    return-void
.end method

.method private final zzb(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/phenotype/zzs;->zzap:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_7} :catch_8

    return-object p1

    :catch_8
    move-exception p1

    const-string v1, "PhenotypeFlag"

    const-string v2, "Invalid string value in SharedPreferences for "

    iget-object v3, p0, Lcom/google/android/gms/phenotype/zzs;->zzap:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_24

    :cond_1e
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_24
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method public final synthetic zza(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/phenotype/zzs;->zzb(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method
