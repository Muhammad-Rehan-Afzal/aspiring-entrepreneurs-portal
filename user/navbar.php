<?php
// navbar.php
include 'config.php';
$current_page = basename($_SERVER['PHP_SELF']);

// Unread messages count for navbar badge
$nav_unread_count = 0;
// Check user login or not
if (isset($_SESSION['user_id'])) {
    $nav_user_id = $_SESSION['user_id'];
    $nav_unread_result = mysqli_query($conn, "SELECT COUNT(*) as count FROM messages WHERE receiver_id = $nav_user_id AND is_read = 0");
    if ($nav_unread_result) {
        $nav_unread_count = mysqli_fetch_assoc($nav_unread_result)['count'];
    }
}
?>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top shadow">
    <div class="container">
        <a class="navbar-brand fs-3" href="dashboard-user.php">
            <i class="fas fa-rocket"></i> EntrePortal
        </a>
        
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">

                <?php if (isset($_SESSION['user_id'])): 
                    $role = $_SESSION['role'] ?? 'user';
                    $dashboard_page = ($role == 'admin') ? 'dashboard-admin.php' : 
                                      ($role == 'agent' ? 'dashboard-agent.php' : 'dashboard-user.php');
                ?>
                    <li class="nav-item">
                        <a class="nav-link <?php echo ($current_page == basename($dashboard_page)) ? 'active' : ''; ?>" href="<?php echo $dashboard_page; ?>">
                            <i class="fas fa-tachometer-alt"></i> Dashboard
                        </a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link <?php echo ($current_page == 'forum.php') ? 'active' : ''; ?>" href="forum.php">
                            <i class="fas fa-users"></i> Discussion Forum
                        </a>
                    </li>
                     
                    <li class="nav-item">
                        <a class="nav-link <?php echo ($current_page == 'messages-user.php') ? 'active' : ''; ?>" href="messages-user.php">
                            <i class="fas fa-comments"></i> Messages
                            <?php if ($nav_unread_count > 0): ?>
                                <span class="badge bg-danger rounded-pill"><?php echo $nav_unread_count; ?></span>
                            <?php endif; ?>
                        </a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link text-success fw-bold" href="logout.php">
                            Logout (<?php echo htmlspecialchars($_SESSION['full_name']); ?>)
                        </a>
                    </li>

                <?php else: ?>
                    <li class="nav-item"><a class="nav-link" href="login.php">Login</a></li>
                    <li class="nav-item">
                        <a class="nav-link btn btn-success text-white px-4 ms-3" href="register.php">
                            Register
                        </a>
                    </li>
                <?php endif; ?>
            </ul>
        </div>
    </div>
</nav>

<style>
            :root {
            --primary: #28a745;
            --dark: #212529;
        }
    
        .navbar-brand {
            font-weight: 700;
            color: var(--primary);
        }
</style>