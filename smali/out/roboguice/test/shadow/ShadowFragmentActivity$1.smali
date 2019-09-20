.class Lroboguice/test/shadow/ShadowFragmentActivity$1;
.super Landroid/support/v4/app/FragmentManager;
.source "ShadowFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lroboguice/test/shadow/ShadowFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lroboguice/test/shadow/ShadowFragmentActivity;


# direct methods
.method constructor <init>(Lroboguice/test/shadow/ShadowFragmentActivity;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lroboguice/test/shadow/ShadowFragmentActivity$1;->this$0:Lroboguice/test/shadow/ShadowFragmentActivity;

    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 2

    return-void
.end method

.method public beginTransaction()Landroid/support/v4/app/FragmentTransaction;
    .registers 2

    .line 29
    new-instance v0, Lroboguice/test/shadow/ShadowFragmentActivity$1$1;

    invoke-direct {v0, p0}, Lroboguice/test/shadow/ShadowFragmentActivity$1$1;-><init>(Lroboguice/test/shadow/ShadowFragmentActivity$1;)V

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public executePendingTransactions()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public findFragmentById(I)Landroid/support/v4/app/Fragment;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBackStackEntryCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public popBackStack()V
    .registers 1

    return-void
.end method

.method public popBackStack(II)V
    .registers 3

    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public popBackStackImmediate()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .registers 4

    return-void
.end method

.method public removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 2

    return-void
.end method

.method public saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method
