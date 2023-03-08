<div>
    <form action="user" method="post">
        <section class="d-flex flex-column">
            <div class="input-group">
                <span class="input-group-text">First and last name: </span>
                <input type="text" aria-label="First name" class="form-control" name="firstName" required>
                <input type="text" aria-label="Last name" class="form-control" name="lastName" required>
            </div>
            <div class="text-danger" class="error">${errors.firstName}</div>
            <div class="text-danger" class="error">${errors.lastName}</div>
        </section>
        <section class="d-flex flex-column">
            <div class="input-group">
                <span class="input-group-text">Gender: </span>
                <select id="gender" name="gender" required class="form-select">
                    <option>Men</option>
                    <option>Women</option>
                    <option selected="true">didn't decide yet</option>
                </select>
            </div>
            <div class="text-danger" class="error">${errors.gender}</div>
        </section>
        <section class="d-flex flex-column">
            <div class="input-group">
                <span class="input-group-text">Age: </span>
                <input type="number" name="age" required class="form-control">
            </div>
            <div class="text-danger" class="error">${errors.age}</div>
        </section>
        <section class="d-flex flex-column">
            <div class="input-group">
                <span class="input-group-text">Job: </span>
                <input type="text" name="job" required class="form-control">
            </div>
            <div class="text-danger" class="error">${errors.job}</div>
        </section>
        <section class="d-flex flex-column align-items-center pt-4">
            <div>
                <input id="isAgree" type="checkbox" name="job" class="form-check-input" required>
                <label for="isAgree">I agree with terms and policies of the company. And allow to process my personal data.
                </label>
            </div>
        </section>
        <section class="pt-4">
            <div class="btn-group" role="group">
                <button type="submit" class="btn btn-success">Send</button>
                <button type="reset" class="btn btn-danger">Clean form</button>
            </div>
        </section>
    </form>
</div>
