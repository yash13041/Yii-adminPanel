<?php foreach ($users as $user): ?>
    <div>
        <strong>User ID:</strong> <?= $user->id ?><br>
        <strong>First Name:</strong> <?= $user->firstname ?><br>
        <strong>Last Name:</strong> <?= $user->lastname ?><br>
        <strong>Email:</strong> <?= $user->email ?><br>
        <!-- Add other fields as needed -->
        <hr>
    </div>
<?php endforeach; ?>